import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'refresh_qr_code_service.g.dart';

@riverpod
class RefreshQrCodeService extends _$RefreshQrCodeService {
  @override
  build() {
    return;
  }

  Future<AsyncValue> refrshQrCode() async {
    return AsyncValue.guard(() async {
      /// TODO: API Call

      print("refresh qr code");
    });
  }
}
