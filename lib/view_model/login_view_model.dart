import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http_experiment_bisakasir/data/repository/login_repository.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  LoginRepository repository;
  var textControllerEmail = TextEditingController();
  var textControllerPassword = TextEditingController();

  bool isTokenExist = false;

  LoginViewModel({required this.repository});

  pushUserLogin() async {
    var response = await repository.postUserLogin(
        textControllerEmail.text, textControllerPassword.text);
    var token = response.data['access_token'];
    repository.saveUserToken(token);
  }

  checkIsTokenExist() async {
    isTokenExist = await repository.checkIfUserTokenExist();
  }

  @override
  void dispose() {
    super.dispose();
    textControllerEmail.dispose();
    textControllerPassword.dispose();
  }
}
