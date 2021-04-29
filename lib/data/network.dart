import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:pago_mobile/model/app_error.dart';
import 'package:pago_mobile/utils/utils.dart';

import 'local.dart';

class ApiService extends GetConnect {
  final AppSharedPrefs prefs;

  ApiService(this.prefs);

  @override
  void onInit() {
    httpClient.baseUrl = kDebugMode ? API.devUrl : API.prodUrl;
    httpClient.addRequestModifier((request) {
      request.headers["Authorization"] = "Bearer ${prefs.token}";
      return request;
    });
    httpClient.addResponseModifier((request, response) {
      if (response.statusCode == 200) {
        try {
          final code = response.body["code"];
          if (code == 200) {
            return Future.value(response);
          } else {
            return Future.error(AppError(code));
          }
        } catch (exception) {
          return Future.error(AppError(0));
        }
      }
      return Future.error(AppError(response.statusCode));
    });
    super.onInit();
  }

  Future<Response> login(Map body) async {
    return post(API.login, body);
  }

  Future<Response> fetchNews(Map params) async {
    return get(API.news, query: params);
  }
}
