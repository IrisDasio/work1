import 'dart:io';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path/path.dart' as path;

part 'url_file_download_service.g.dart';

@riverpod
class UrlFileDownloadService extends _$UrlFileDownloadService {
  @override
  build() {
    return;
  }

  Future<AsyncValue<File>> download(String url) async {
    return await AsyncValue.guard(
      () async {
        /// URL에서 파일 다운로드
        final response = await Dio().get(
          url,
          options: Options(
            responseType: ResponseType.bytes,
          ),
        );

        /// 고유 파일 이름 생성
        final fileName = _createUniqueFileName(path.basename(url));

        /// 저장 파일 경로 구성
        final filePath = await _buildFilePath(fileName);

        /// 비어있는 파일 생성
        final file = File(filePath);

        /// 파일에 데이터 채우기
        await file.writeAsBytes(response.data);

        return file;
      },
    );
  }

  String _createUniqueFileName(String fileBaseName) {
    final now = DateTime.now();
    final timestamp = now.millisecondsSinceEpoch;

    return "file_${timestamp}_$fileBaseName";
  }

  /// 실제 파일이 위치할 경로
  Future<String> _buildFilePath(String fileName) async {
    final downloadDir = await _findDownloadDir();

    return path.join(downloadDir.path, fileName);
  }

  /// 저장 폴더 경로 찾기
  Future<Directory> _findDownloadDir() async {
    if (Platform.isAndroid) {
      return Directory('/storage/emulated/0/Download');
    }

    return await path_provider.getApplicationDocumentsDirectory();
  }
}