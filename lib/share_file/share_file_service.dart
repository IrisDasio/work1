import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_plus/share_plus.dart';

part 'share_file_service.g.dart';

@riverpod
class ShareFileServicec extends _$ShareFileServicec {
  @override
  build() {
    return;
  }

  Future<AsyncValue<ShareResult>> shareFileFromUrl({
    required String url,
    String? text,
    String? title,
  }) async {
    return await AsyncValue.guard(() async {
      final response = await Dio().get(
        url,
        options: Options(
          responseType: ResponseType.bytes,
        ),
      );

      final tempDirPath = await getTemporaryDirectory();
      final filePath = join(tempDirPath.path, basename(url));

      final file = File(filePath);
      await file.writeAsBytes(response.data);

      // print(file.readAsBytesSync());

      return await Share.shareXFiles(
        [
          XFile(file.path),
        ],
        subject: title,
        text: text,
      );
    });
  }
}
