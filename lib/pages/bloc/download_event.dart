part of 'download_bloc.dart';

@Freezed(copyWith: false)
class DownloadEvent with _$DownloadEvent {
  const factory DownloadEvent.getDownloads() = _GetDownloads;
  const factory DownloadEvent.addDownload(String link) = _AddDownload;
  const factory DownloadEvent.removeDownload(String id) = _RemoveDownload;
  const factory DownloadEvent.updateProgress(
      String id, int status, int progress) = _UpdateProgress;
  const factory DownloadEvent.refreshTaskId(String oldId, String newId) =
      _RefreshTaskId;

  const factory DownloadEvent.downloadCompleted(
      String id, DownloadProgress progress) = _DownloadCompleted;
}
