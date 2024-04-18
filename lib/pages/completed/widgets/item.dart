part of '../completed.dart';

class _DownloadItemWidget extends StatelessWidget {
  const _DownloadItemWidget(this.taskId);

  final String taskId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DownloadBloc, DownloadState>(
      buildWhen: (previous, current) =>
          previous.completed[taskId] != current.completed[taskId],
      builder: (context, state) {
        final item = state.completed[taskId];
        final fileName = item!.link.split('/').last;

        return ListTile(
          onTap: () {
            context.read<DownloadBloc>().openFile(taskId);
          },
          title: Text(fileName),
          trailing: IconButton(
            icon: const Icon(Icons.delete_rounded),
            onPressed: () {
              showAdaptiveDialog(
                  context: context,
                  builder: (context) => AlertDialog.adaptive(
                        content:
                            const Text('Do you want to remove the download?'),
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
                      ));
            },
          ),
        );
      },
    );
  }
}
