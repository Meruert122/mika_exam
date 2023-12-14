part of 'otp_bloc.dart';

@immutable
abstract class OtpEvent {}

class OtpCodeFilledEvent extends OtpEvent{
  final String phone;
  final String otpCode;

  OtpCodeFilledEvent(this.otpCode, this.phone);
}