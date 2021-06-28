import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http_experiment_bisakasir/view/home_view.dart';
import 'package:http_experiment_bisakasir/view/login_view.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => LoginView()),
      GetPage(name: '/home', page: () => HomeView())
    ],
  ));
}
