import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:go_router/go_router.dart';

import '../bloc/download_bloc.dart';

part 'widgets/item.dart';

class DownloadsPage extends StatefulWidget {
  const DownloadsPage({super.key});

  static const path = '/downloads';

  @override
  State<DownloadsPage> createState() => _DownloadsPageState();
}

class _DownloadsPageState extends State<DownloadsPage> {
  final _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _controller.dispose();
    _formKey.currentState?.dispose();
    super.dispose();
  }

  void _showAddDownloadDialog(BuildContext context) {
    showAdaptiveDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Form(
                    key: _formKey,
                    child: TextFormField(
                        controller: _controller,
                        validator: (value) {
                          return value != null &&
                                  value.isNotEmpty &&
                                  (value.startsWith('https://') ||
                                      value.startsWith('http://')) &&
                                  value.split('/').last.contains('.')
                              ? null
                              : 'Please enter a valid link';
                        }),
                  ),
                  ButtonBar(
                    children: [
                      TextButton(
                        onPressed: context.pop,
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: _addDownload,
                        child: const Text('Add'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _addDownload() {
    if (_formKey.currentState!.validate()) {
      final link = _controller.text;

      _controller.clear();

      context.read<DownloadBloc>().add(DownloadEvent.addDownload(link));

      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DownloadBloc, DownloadState>(
        buildWhen: (previous, current) =>
            previous.downloads.keys != current.downloads.keys,
        builder: (context, state) {
          return ListView.separated(
            itemBuilder: (context, index) {
              final item = state.downloads.keys.toList()[index]; // TODO
              return _DownloadItemWidget(item);
            },
            separatorBuilder: (_, __) => const SizedBox(height: 10),
            itemCount: state.downloads.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddDownloadDialog(context),
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
