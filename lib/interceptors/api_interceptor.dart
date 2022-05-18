import 'dart:async';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter_modular/flutter_modular.dart';

class APIInterceptor extends RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) {
    if (request.url.endsWith('userroutelogin') ||
        request.url.endsWith('userrouteregister') ||
        request.url.endsWith('socialuserroute')) return request;
    // AuthStore _authStore = Modular.get<AuthStore>();

    return request.copyWith(headers: {
      //   HttpHeaders.authorizationHeader: "Bearer ${_authStore.profile.token}",
    });
  }
}
