import 'dart:io';
import 'dart:isolate';
import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/models/download_progress.dart';
import '../utils/get_saving_directory.dart';

part 'download_event.dart';
part 'download_state.dart';
part 'download_bloc.freezed.dart';

class DownloadBloc extends Bloc<DownloadEvent, DownloadState> {
  DownloadBloc() : super(DownloadState._()) {
    on<_GetDownloads>(_onGetDownloads);
    on<_AddDownload>(_onAddLink);
    on<_RemoveDownload>(_onRemoveDownload);
    on<_UpdateProgress>(_onUpdateProgress);
    on<_RefreshTaskId>(_onRefreshTaskId);
    on<_DownloadCompleted>(_onDownloadCompleted);
  }

  static const _portName = 'downloader_send_port';

  final _port = ReceivePort();

  @override
  Future<void> close() {
    IsolateNameServer.removePortNameMapping(_portName);
    return super.close();
  }

  Future<void> initUpdateListener() async {
    // Register port for downloads update
    IsolateNameServer.registerPortWithName(_port.sendPort, _portName);

    // Listen for updates
    _port.listen(
      (dynamic data) => add(
        _UpdateProgress(data[0], data[1], data[2]),
      ),
    );

    FlutterDownloader.registerCallback(_downloadCallback);
  }

  Future<void> pauseDownload(String taskId) =>
      FlutterDownloader.pause(taskId: taskId);

  Future<void> cancelDownload(String taskId) =>
      FlutterDownloader.cancel(taskId: taskId);

  Future<void> openFile(String taskId) =>
      FlutterDownloader.open(taskId: taskId);

  Future<void> resumeDownload(String taskId) =>
      FlutterDownloader.resume(taskId: taskId).then((newId) {
        if (newId != null) {
          add(_RefreshTaskId(taskId, newId));
        }
      });

  Future<void> _onRemoveDownload(
      _RemoveDownload event, Emitter<DownloadState> emit) async {
    await FlutterDownloader.remove(
        taskId: event.id, shouldDeleteContent: false);
    emit(
      state.copyWith(
        downloads: Map.from(state.downloads)..remove(event.id),
        completed: Map.from(state.completed)..remove(event.id),
      ),
    );
  }

  Future<void> retryDownload(String taskId) =>
      FlutterDownloader.retry(taskId: taskId).then((newId) {
        if (newId != null) {
          add(_RefreshTaskId(taskId, newId));
        }
      });

  void _onRefreshTaskId(_RefreshTaskId event, Emitter<DownloadState> emit) {
    emit(
      state.copyWith(
        downloads: Map.from(state.downloads)
          ..remove(event.oldId)
          ..addAll({event.newId: state.downloads[event.oldId]!}),
      ),
    );
  }

  Future<void> _onGetDownloads(
      _GetDownloads event, Emitter<DownloadState> emit) async {
    initUpdateListener();

    final tasks = await FlutterDownloader.loadTasks();
    final Map<String, DownloadProgress> downloads = {};
    final Map<String, DownloadProgress> completed = {};

    tasks?.forEach((value) {
      if (value.status == DownloadTaskStatus.complete) {
        completed[value.taskId] = DownloadProgress(
          link: value.url,
          status: value.status,
          progress: value.progress,
        );
      } else {
        downloads[value.taskId] = DownloadProgress(
          link: value.url,
          status: value.status,
          progress: value.progress,
        );
      }
    });

    emit(
      DownloadState(
        downloads: downloads,
        completed: completed,
      ),
    );
  }

  @pragma('vm:entry-point')
  static void _downloadCallback(String id, int status, int progress) {
    final send = IsolateNameServer.lookupPortByName(_portName)!;
    send.send([id, status, progress]);
  }

  void _onUpdateProgress(_UpdateProgress event, Emitter<DownloadState> emit) {
    final status = DownloadTaskStatus.values[event.status];

    if (status == DownloadTaskStatus.complete) {
      add(
        _DownloadCompleted(
          event.id,
          state.downloads[event.id]!
              .update(status: status, progress: event.progress),
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        downloads: Map<String, DownloadProgress>.from(state.downloads)
          ..update(
            event.id,
            (progress) =>
                progress.update(status: status, progress: event.progress),
          ),
      ),
    );
  }

  Future<void> _onAddLink(
      _AddDownload event, Emitter<DownloadState> emit) async {
    // Check if already in download tasks, restart or resume downloading
    for (final key in state.downloads.keys) {
      final value = state.downloads[key]!;

      if (value.link == event.link) {
        final item = state.downloads[event.link]!;

        if (item.status == DownloadTaskStatus.paused) {
          FlutterDownloader.resume(taskId: key);
          return;
        }

        if (item.status == DownloadTaskStatus.failed) {
          FlutterDownloader.retry(taskId: key);
          return;
        }

        // If its cancelled, restart download
        if (item.status == DownloadTaskStatus.canceled) {
          break;
        }
      }
    }

    final directory = await getSavingDirectory();

    // Check if the file is already downloaded
    for (final key in state.downloads.keys) {
      final link = state.downloads[key]!.link;
      final fileName = event.link.split('/').last;

      if (link == event.link && await File('$directory/$fileName').exists()) {
        return;
      } else {
        FlutterDownloader.remove(taskId: key);
        break;
      }
    }

    final taskId = await FlutterDownloader.enqueue(
      url: event.link,
      savedDir: directory.path,
      saveInPublicStorage: true,
      showNotification: true,
      openFileFromNotification: true,
    );

    emit(
      state.copyWith(
        downloads: Map<String, DownloadProgress>.from(state.downloads)
          ..addAll({
            taskId!: DownloadProgress(
              link: event.link,
              status: DownloadTaskStatus.undefined,
              progress: 0,
            ),
          }),
      ),
    );
  }

  void _onDownloadCompleted(
      _DownloadCompleted event, Emitter<DownloadState> emit) {
    emit(
      state.copyWith(
        downloads: Map<String, DownloadProgress>.from(state.downloads)
          ..remove(event.id),
        completed: Map<String, DownloadProgress>.from(state.downloads)
          ..addAll({event.id: event.progress}),
      ),
    );
  }
}
