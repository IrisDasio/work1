// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_code_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QrCodeFormModel {
  String get qrImageUrl => throw _privateConstructorUsedError;
  String get familyCode => throw _privateConstructorUsedError;
  int get managerId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QrCodeFormModelCopyWith<QrCodeFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrCodeFormModelCopyWith<$Res> {
  factory $QrCodeFormModelCopyWith(
          QrCodeFormModel value, $Res Function(QrCodeFormModel) then) =
      _$QrCodeFormModelCopyWithImpl<$Res, QrCodeFormModel>;
  @useResult
  $Res call({String qrImageUrl, String familyCode, int managerId});
}

/// @nodoc
class _$QrCodeFormModelCopyWithImpl<$Res, $Val extends QrCodeFormModel>
    implements $QrCodeFormModelCopyWith<$Res> {
  _$QrCodeFormModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrImageUrl = null,
    Object? familyCode = null,
    Object? managerId = null,
  }) {
    return _then(_value.copyWith(
      qrImageUrl: null == qrImageUrl
          ? _value.qrImageUrl
          : qrImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      familyCode: null == familyCode
          ? _value.familyCode
          : familyCode // ignore: cast_nullable_to_non_nullable
              as String,
      managerId: null == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QrCodeFormModelCopyWith<$Res>
    implements $QrCodeFormModelCopyWith<$Res> {
  factory _$$_QrCodeFormModelCopyWith(
          _$_QrCodeFormModel value, $Res Function(_$_QrCodeFormModel) then) =
      __$$_QrCodeFormModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String qrImageUrl, String familyCode, int managerId});
}

/// @nodoc
class __$$_QrCodeFormModelCopyWithImpl<$Res>
    extends _$QrCodeFormModelCopyWithImpl<$Res, _$_QrCodeFormModel>
    implements _$$_QrCodeFormModelCopyWith<$Res> {
  __$$_QrCodeFormModelCopyWithImpl(
      _$_QrCodeFormModel _value, $Res Function(_$_QrCodeFormModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrImageUrl = null,
    Object? familyCode = null,
    Object? managerId = null,
  }) {
    return _then(_$_QrCodeFormModel(
      qrImageUrl: null == qrImageUrl
          ? _value.qrImageUrl
          : qrImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      familyCode: null == familyCode
          ? _value.familyCode
          : familyCode // ignore: cast_nullable_to_non_nullable
              as String,
      managerId: null == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_QrCodeFormModel extends _QrCodeFormModel {
  _$_QrCodeFormModel(
      {required this.qrImageUrl,
      required this.familyCode,
      required this.managerId})
      : super._();

  @override
  final String qrImageUrl;
  @override
  final String familyCode;
  @override
  final int managerId;

  @override
  String toString() {
    return 'QrCodeFormModel(qrImageUrl: $qrImageUrl, familyCode: $familyCode, managerId: $managerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QrCodeFormModel &&
            (identical(other.qrImageUrl, qrImageUrl) ||
                other.qrImageUrl == qrImageUrl) &&
            (identical(other.familyCode, familyCode) ||
                other.familyCode == familyCode) &&
            (identical(other.managerId, managerId) ||
                other.managerId == managerId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, qrImageUrl, familyCode, managerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QrCodeFormModelCopyWith<_$_QrCodeFormModel> get copyWith =>
      __$$_QrCodeFormModelCopyWithImpl<_$_QrCodeFormModel>(this, _$identity);
}

abstract class _QrCodeFormModel extends QrCodeFormModel {
  factory _QrCodeFormModel(
      {required final String qrImageUrl,
      required final String familyCode,
      required final int managerId}) = _$_QrCodeFormModel;
  _QrCodeFormModel._() : super._();

  @override
  String get qrImageUrl;
  @override
  String get familyCode;
  @override
  int get managerId;
  @override
  @JsonKey(ignore: true)
  _$$_QrCodeFormModelCopyWith<_$_QrCodeFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}
