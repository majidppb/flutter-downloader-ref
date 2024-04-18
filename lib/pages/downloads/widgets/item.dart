part of '../downloads.dart';

class _DownloadItemWidget extends StatelessWidget {
  const _DownloadItemWidget(this.taskId);

  final String taskId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DownloadBloc, DownloadState>(
      buildWhen: (previous, current) =>
          previous.downloads[taskId] != current.downloads[taskId],
      builder: (context, state) {
        final item = state.downloads[taskId];
        final fileName = item!.link.split('/').last;

        return ListTile(
          onLongPress: () {
            if (item.status == DownloadTaskStatus.running ||
                item.status == DownloadTaskStatus.paused) {
              showAdaptiveDialog(
                context: context,
                builder: (context) => AlertDialog.adaptive(
                  content: const Text('Cancel download?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        context.read<DownloadBloc>().cancelDownload(taskId);
                        context.pop();
                      },
                      child: const Text('Yes'),
                    ),
                    TextButton(
                      onPressed: context.pop,
                      child: const Text('No'),
                    ),
                  ],
                ),
              );
            }
            if (item.status == DownloadTaskStatus.failed ||
                item.status == DownloadTaskStatus.canceled) {
              showAdaptiveDialog(
                context: context,
                builder: (context) => AlertDialog.adaptive(
                  content: const Text('Remove download?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        context
                            .read<DownloadBloc>()
                            .add(DownloadEvent.removeDownload(taskId));
                        context.pop();
                      },
                      child: const Text('Yes'),
                    ),
                    TextButton(
                      onPressed: context.pop,
                      child: const Text('No'),
                    ),
                  ],
                ),
              );
            }
          },
          leading: Text('${item.progress} %'),
          title: Text(fileName),
          subtitle: LinearProgressIndicator(value: item.progress / 100),
          trailing: _getAction(context, item.status),
        );
      },
    );
  }

  IconButton? _getAction(BuildContext context, DownloadTaskStatus status) {
    switch (status) {
      case DownloadTaskStatus.running:
        return IconButton(
          icon: const Icon(Icons.pause_rounded),
          onPressed: () => context.read<DownloadBloc>().pauseDownload(taskId),
        );
      case DownloadTaskStatus.failed:
        return IconButton(
          icon: const Icon(Icons.restart_alt_rounded),
          onPressed: () => context.read<DownloadBloc>().retryDownload(taskId),
        );
      case DownloadTaskStatus.canceled:
        return IconButton(
          icon: const Icon(Icons.restart_alt_rounded),
          onPressed: () => context.read<DownloadBloc>().retryDownload(taskId),
        );
      case DownloadTaskStatus.paused:
        return IconButton(
          icon: const Icon(Icons.play_arrow_rounded),
          onPressed: () => context.read<DownloadBloc>().resumeDownload(taskId),
        );

      default:
        return null;
    }
  }
}
