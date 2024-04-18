import 'package:flutter_downloader/flutter_downloader.dart';

final class DownloadProgress {
  final String link;
  final DownloadTaskStatus status;
  final int progress;

  const DownloadProgress({
    required this.link,
    required this.status,
    required this.progress,
  });

  DownloadProgress update({
    required DownloadTaskStatus status,
    required int progress,
  }) =>
      DownloadProgress(link: link, status: status, progress: progress);
}
