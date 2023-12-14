import 'package:blog_post/core/data/remote_request_type.dart';
import 'package:blog_post/data/base/remote_client.dart';

class FirebaseRemoteClient extends RemoteClient {
  @override
  Future<Map<String, dynamic>> request({
    required String url,
    required RemoteRequestType method,
    Map<String, dynamic>? body,
  }) async {
    switch(method){

      case RemoteRequestType.GET:
      case RemoteRequestType.POST:
        // TODO: Handle this case.
      case RemoteRequestType.PUT:
        // TODO: Handle this case.
      case RemoteRequestType.DELETE:
        // TODO: Handle this case.
    }

    return {};
  }
}
