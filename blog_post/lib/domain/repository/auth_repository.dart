
import 'package:blog_post/domain/entity/profile.dart';
import 'package:blog_post/domain/request_model/auth_request_model.dart';
import 'package:blog_post/domain/request_model/empty_request_model.dart';

abstract interface class AuthRepository {
  Future<bool> auth(AuthRequestModel requestModel);

  Future<ProfileInfo> getProfile(EmptyRequestModel requestModel);
}
