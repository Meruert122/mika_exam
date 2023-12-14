// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileInfo _$ProfileInfoFromJson(Map<String, dynamic> json) {
  return _ProfileInfo.fromJson(json);
}

/// @nodoc
mixin _$ProfileInfo {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileInfoCopyWith<ProfileInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInfoCopyWith<$Res> {
  factory $ProfileInfoCopyWith(
          ProfileInfo value, $Res Function(ProfileInfo) then) =
      _$ProfileInfoCopyWithImpl<$Res, ProfileInfo>;
  @useResult
  $Res call({String phoneNumber, String name, int age});
}

/// @nodoc
class _$ProfileInfoCopyWithImpl<$Res, $Val extends ProfileInfo>
    implements $ProfileInfoCopyWith<$Res> {
  _$ProfileInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileInfoImplCopyWith<$Res>
    implements $ProfileInfoCopyWith<$Res> {
  factory _$$ProfileInfoImplCopyWith(
          _$ProfileInfoImpl value, $Res Function(_$ProfileInfoImpl) then) =
      __$$ProfileInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String name, int age});
}

/// @nodoc
class __$$ProfileInfoImplCopyWithImpl<$Res>
    extends _$ProfileInfoCopyWithImpl<$Res, _$ProfileInfoImpl>
    implements _$$ProfileInfoImplCopyWith<$Res> {
  __$$ProfileInfoImplCopyWithImpl(
      _$ProfileInfoImpl _value, $Res Function(_$ProfileInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_$ProfileInfoImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileInfoImpl implements _ProfileInfo {
  const _$ProfileInfoImpl(
      {required this.phoneNumber, required this.name, required this.age});

  factory _$ProfileInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileInfoImplFromJson(json);

  @override
  final String phoneNumber;
  @override
  final String name;
  @override
  final int age;

  @override
  String toString() {
    return 'ProfileInfo(phoneNumber: $phoneNumber, name: $name, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileInfoImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, name, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileInfoImplCopyWith<_$ProfileInfoImpl> get copyWith =>
      __$$ProfileInfoImplCopyWithImpl<_$ProfileInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileInfoImplToJson(
      this,
    );
  }
}

abstract class _ProfileInfo implements ProfileInfo {
  const factory _ProfileInfo(
      {required final String phoneNumber,
      required final String name,
      required final int age}) = _$ProfileInfoImpl;

  factory _ProfileInfo.fromJson(Map<String, dynamic> json) =
      _$ProfileInfoImpl.fromJson;

  @override
  String get phoneNumber;
  @override
  String get name;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$$ProfileInfoImplCopyWith<_$ProfileInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
