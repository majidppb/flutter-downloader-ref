part of 'download_bloc.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState({
    //key : download task id
    required Map<String, DownloadProgress> downloads,
    required Map<String, DownloadProgress> completed,
  }) = _DownloadState;

  factory DownloadState._() => const DownloadState(
        downloads: {},
        completed: {},
      );
}
