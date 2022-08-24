import 'dart:io';

import 'package:flutter_full_learn/202/custom_exception.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

abstract class IFileDowndload {
  bool? downloadItem(FileDownload? fileItem);

  void toShare(String path) async {
    await launch(path);
  }
}

class FileDownload extends IFileDowndload with ShareMixin {
  @override
  bool? downloadItem(FileDownload? fileItem) {
    if (fileItem == null) throw FileDownloadException();

    print('a');

    return true;
  }

  void smsShare() {}
}

class SMSDownload implements IFileDowndload {
  @override
  bool? downloadItem(FileDownload? fileItem) {
    if (fileItem == null) throw FileDownloadException();

    return true;
  }

  @override
  Future<void> toShare(String path) async {
    await launch("sms:$path");
  }
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}

mixin ShareMixin on IFileDowndload {
  void toShowFile() {}
}
