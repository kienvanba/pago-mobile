import 'package:get/get.dart';
import 'package:pago_mobile/model/news.dart';
import 'package:pago_mobile/model/user.dart';
import 'package:pago_mobile/utils/utils.dart';

import 'local.dart';
import 'network.dart';

class AppRepository extends GetxService {
  ApiService _api;
  AppSharedPrefs _prefs;

  String get token => _prefs.token;
  set token(value) {
    _prefs.token = value;
  }

  Future<AppRepository> init() async {
    _prefs = await Get.putAsync(() => AppSharedPrefs().init());
    _api = Get.put(ApiService(_prefs));
    return this;
  }

  Future<User> login(String username, String password) async {
    final body = {"username": username, "password": password};
    return _api.login(body).then((value) {
      final user = User.fromJson(value.body["data"]);
      _prefs.token = user.token;
      return user;
    });
  }

  Future<List<News>> fetchNews() async {
    final params = {"a": "b"};
    return _api.fetchNews(params).then((value) {
      final List list = (value.body["data"] as List);
      return list.map((json) => News.fromJson(json)).toList();
    });
  }
}
