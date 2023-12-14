sealed class DomainException implements Exception{
  final String message;
  DomainException(this.message);
}

class UnknownException extends DomainException{
  UnknownException() : super('Неизвестная ошибка');
}