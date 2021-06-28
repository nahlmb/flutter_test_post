import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http_experiment_bisakasir/data/provider/login_provider_local.dart';
import 'package:http_experiment_bisakasir/data/provider/login_provider_network.dart';
import 'package:http_experiment_bisakasir/data/repository/login_repository.dart';
import 'package:http_experiment_bisakasir/view_model/login_view_model.dart';

class LoginView extends StatelessWidget {
  final LoginViewModel viewModel = Get.put(LoginViewModel(
      repository: LoginRepository(
          providerNetwork: LoginProviderNetwork(),
          providerLocal: LoginProviderLocal())));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: viewModel.textControllerEmail,
              decoration: InputDecoration(hintText: "email"),
            ),
            SizedBox(
              height: 24,
            ),
            TextField(
                controller: viewModel.textControllerPassword,
                decoration: InputDecoration(hintText: "password")),
            SizedBox(
              height: 32,
            ),
            ElevatedButton(
                onPressed: () {
                  viewModel.pushUserLogin();
                },
                child: Text('login'))
          ],
        ),
      )),
    );
  }
}
