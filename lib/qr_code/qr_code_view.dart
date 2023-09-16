import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:work1/providers/qr_code_data.dart';
import 'package:work1/qr_code/qr_code_vac.dart';
import 'package:work1/url_file_download/url_file_download_service.dart';

class QrCodeView extends StatefulHookConsumerWidget {
  const QrCodeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QrCodePageViewState();
}

class _QrCodePageViewState extends ConsumerState<QrCodeView> {
  @override
  Widget build(BuildContext context) {
    final model = ref.watch(qrCodeFormDataProvider);

    return model.when(
      data: (data) => QrCodeVac(
        qrUrl: data.qrImageUrl,
        qrcode: data.familyCode,
        onClickSaveBtn: download,
      ),
      error: (error, stackTrace) => const Text("에러"),
      loading: () => const CircularProgressIndicator(),
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
}