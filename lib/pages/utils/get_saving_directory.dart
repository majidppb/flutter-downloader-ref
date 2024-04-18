import 'dart:io';

Future<Directory> getSavingDirectory() async {
  const path = '/storage/emulated/0/Download';
  final directory = Directory(path);

  if (!await directory.exists()) {
    await directory.create();
  }

  return directory;
}
