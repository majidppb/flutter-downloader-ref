import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../bloc/download_bloc.dart';
import '../../core/models/download_progress.dart';

part 'widgets/item.dart';

class CompletedPage extends StatelessWidget {
  const CompletedPage({super.key});

  static const path = '/completed';

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DownloadBloc, DownloadState,
        Map<String, DownloadProgress>>(
      selector: (state) => state.completed,
      builder: (context, state) {
        return ListView.separated(
          itemBuilder: (context, index) {
            final item = state.keys.toList()[index]; // TODO
            return _DownloadItemWidget(item);
          },
          separatorBuilder: (_, __) => const SizedBox(height: 10),
          itemCount: state.length,
        );
      },
    );
  }
}
