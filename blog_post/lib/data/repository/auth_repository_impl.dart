import 'dart:convert';

import 'package:blog_post/core/data/local_constants.dart';
import 'package:blog_post/domain/entity/profile.dart';
import 'package:blog_post/domain/repository/auth_repository.dart';
import 'package:blog_post/domain/request_model/auth_request_model.dart';
import 'package:blog_post/domain/request_model/empty_request_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<bool> auth(AuthRequestModel requestModel) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString(
      LocalConstants.profileKey,
      jsonEncode(
        ProfileInfo(
          phoneNumber: requestModel.phone,
          name: 'Test',
          age: 19,
        ),
      ),
    );
    return requestModel.otp == '1234';
  }

  @override
  Future<ProfileInfo> getProfile(EmptyRequestModel requestModel) async {
    final preferences = await SharedPreferences.getInstance();
    final profileInfo = jsonDecode(
        await preferences.getString(LocalConstants.profileKey) ?? '');
    return ProfileInfo.fromJson(profileInfo);
  }
}
