import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:work1/providers/qr_code_data.dart';
import 'package:work1/qr_code/qr_code_vac.dart';
import 'package:work1/refresh_qr_code/refresh_qr_code_service.dart';
import 'package:work1/share_file/share_file_service.dart';
import 'package:work1/url_file_download/url_file_download_service.dart';
import 'package:share_plus/share_plus.dart';
import 'package:work1/user_id/user_id.dart';

class QrCodeView extends StatefulHookConsumerWidget {
  const QrCodeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QrCodePageViewState();
}

class _QrCodePageViewState extends ConsumerState<QrCodeView> {
  @override
  Widget build(BuildContext context) {
    final userId = ref.watch(userIdProvider).asData?.value ?? 0;
    final res = ref.watch(qrCodeFormDataProvider);

    return res.when(
      data: (model) {
        final isManger = model.isMe(userId);
        print(isManger);

        return QrCodeVac(
          qrUrl: model.qrImageUrl,
          qrcode: model.familyCode,
          onClickSaveBtn: () {},
          onShere: handleShare,
          onRefrsh: handleRefreshQrCode,
        );
      },
      error: (error, stackTrace) => const Text("에러"),
      loading: () => const CircularProgressIndicator(),
    );
  }

  Future handleRefreshQrCode() async {
    final res =
        await ref.read(refreshQrCodeServiceProvider.notifier).refrshQrCode();
    res.whenOrNull(
      data: (data) {
        print(" 성공");
      },
      error: (error, stackTrace) {
        print(" 실패");
      },
      loading: () {},
    );
  }

  Future download() async {
    const imageUrl =
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/220px-QR_code_for_mobile_English_Wikipedia.svg.png";

    final res = await ref
        .read(urlFileDownloadServiceProvider.notifier)
        .download(imageUrl);

    res.whenOrNull(
      data: (data) {
        print("✅ 다운로드 성공 : $data");
      },
      error: (error, stackTrace) {
        print("❌ 다운로드 실패 : ${error.toString()}");
      },
    );
  }

  Future handleShare() async {
    const url =
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/220px-QR_code_for_mobile_English_Wikipedia.svg.png";
    final res = await ref
        .read(shareFileServicecProvider.notifier)
        .shareFileFromUrl(url: url, text: "asd", title: "asd");

    res.whenOrNull(
      data: (data) {
        print("공유 성공");
      },
      error: (error, stackTrace) {
        print("공유 실패");
      },
      loading: () {},
    );
  }
}
