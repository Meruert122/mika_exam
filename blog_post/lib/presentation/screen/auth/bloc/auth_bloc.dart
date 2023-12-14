import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:blog_post/domain/request_model/auth_request_model.dart';
import 'package:blog_post/domain/use_case/auth_use_case.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authUseCase) : super(AuthInitial()) {
    on<AuthLoginPressedEvent>(onAuthLoginPressedEvent);
  }

  final AuthUseCase _authUseCase;

  Future<void> onAuthLoginPressedEvent(
      AuthLoginPressedEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    await Future.delayed(const Duration(seconds: 2));
    emit(AuthSuccess(event.phone));
  }
}
