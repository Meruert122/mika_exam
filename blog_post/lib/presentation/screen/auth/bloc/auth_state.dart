part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthSuccess extends AuthState {
  final String phone;

  AuthSuccess(this.phone);
}

class AuthLoading extends AuthState {}

class AuthFailure extends AuthState{
  final String message;

  AuthFailure(this.message);
}