import 'dart:io';

import 'package:dio/dio.dart';

class LoginProviderNetwork {
  late Dio dio;

  LoginProvider() {
    BaseOptions options =
        BaseOptions(baseUrl: "http://{{put your ip here}}/api");
    dio = new Dio(options);
  }

  Future<Response> postUserLogin(String email, String password) async {
    var response = await dio.post("/auth/login",
        data: FormData.fromMap({"email": email, "password": password}));
    return response;
  }
}
