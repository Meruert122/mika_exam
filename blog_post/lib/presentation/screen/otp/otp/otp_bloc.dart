import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:blog_post/domain/request_model/auth_request_model.dart';
import 'package:blog_post/domain/use_case/auth_use_case.dart';
import 'package:meta/meta.dart';

part 'otp_event.dart';

part 'otp_state.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  OtpBloc(this._authUseCase) : super(OtpInitial()) {
    on<OtpCodeFilledEvent>(onOtpCodeFilledEvent);
  }

  final AuthUseCase _authUseCase;

  Future<void> onOtpCodeFilledEvent(OtpCodeFilledEvent event,
      Emitter<OtpState> emit) async {
    emit(OtpLoading());
    try {
      await _authUseCase(AuthRequestModel(phone: event.phone, otp: event.otpCode));
    } catch (e) {}
    emit(OtpSuccess());
  }
}
