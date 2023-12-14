import 'package:blog_post/core/domain/domain_exception.dart';
import 'package:blog_post/domain/base/use_case.dart';
import 'package:blog_post/domain/entity/profile.dart';
import 'package:blog_post/domain/repository/auth_repository.dart';
import 'package:blog_post/domain/request_model/empty_request_model.dart';

class GetProfileUseCase
    extends UseCase<AuthRepository, EmptyRequestModel, ProfileInfo> {
  GetProfileUseCase(super.repository);

  @override
  Future<ProfileInfo> executor(EmptyRequestModel requestModel) {
    return repository.getProfile(requestModel);
  }

  @override
  Future<DomainException> handleException(Object e) {
    throw UnimplementedError();
  }
}
