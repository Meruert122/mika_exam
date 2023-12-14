
import 'package:blog_post/core/domain/domain_exception.dart';

abstract class UseCase<Repository, RequestModel, ResultModel> {
  final Repository _repository;

  Repository get repository => _repository;

  UseCase(this._repository);

  Future<ResultModel> call(RequestModel requestModel) {
    try {
      return executor(requestModel);
    } catch (e) {
      throw handleException(e);
    }
  }

  Future<DomainException> handleException(Object e);

  Future<ResultModel> executor(RequestModel requestModel);
}
