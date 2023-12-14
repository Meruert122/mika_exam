import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

part 'profile.g.dart';

@freezed
class ProfileInfo with _$ProfileInfo {
  const factory ProfileInfo({
    required String phoneNumber,
    required String name,
    required int age,
  }) = _ProfileInfo;

  factory ProfileInfo.fromJson(Map<String, dynamic> json) =>
      _$ProfileInfoFromJson(json);
}
