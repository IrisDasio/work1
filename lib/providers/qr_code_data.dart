import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'qr_code_data.freezed.dart';
part 'qr_code_data.g.dart';

@freezed
class QrCodeFormModel with _$QrCodeFormModel {
  factory QrCodeFormModel({
    required String qrImageUrl,
    required String familyCode,
    required int managerId,
  }) = _QrCodeFormModel;

  QrCodeFormModel._();

  bool isMe(int userId) {
    return userId == managerId;
  }
}

@riverpod
class QrCodeFormData extends _$QrCodeFormData {
  @override
  Future<QrCodeFormModel> build() async {
    return QrCodeFormModel(
      qrImageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/220px-QR_code_for_mobile_English_Wikipedia.svg.png",
      familyCode: "무슨 무슨 코드가 들어올 자리",
      managerId: 0,
    );
  }
}