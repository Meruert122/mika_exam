part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class AuthLoginPressedEvent extends AuthEvent{
  final String phone;

  AuthLoginPressedEvent(this.phone);
}