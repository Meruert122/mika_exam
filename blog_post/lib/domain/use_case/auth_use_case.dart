import 'package:blog_post/core/domain/domain_exception.dart';
import 'package:blog_post/domain/base/use_case.dart';
import 'package:blog_post/domain/repository/auth_repository.dart';
import 'package:blog_post/domain/request_model/auth_request_model.dart';

class AuthUseCase extends UseCase<AuthRepository, AuthRequestModel, bool>{
  AuthUseCase(super.repository);

  @override
  Future<bool> executor(AuthRequestModel requestModel) {
    return repository.auth(requestModel);
  }

  @override
  Future<DomainException> handleException(Object e) async {
    return UnknownException();
  }

}