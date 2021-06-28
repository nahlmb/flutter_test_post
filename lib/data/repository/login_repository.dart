import 'package:dio/dio.dart';
import 'package:http_experiment_bisakasir/data/provider/login_provider_local.dart';
import 'package:http_experiment_bisakasir/data/provider/login_provider_network.dart';

class LoginRepository {
  LoginProviderNetwork providerNetwork;
  LoginProviderLocal providerLocal;
  LoginRepository({required this.providerNetwork, required this.providerLocal});

  Future<Response> postUserLogin(String email, String password) {
    return providerNetwork.postUserLogin(email, password);
  }

  saveUserToken(String token) {
    providerLocal.saveUserToken(token);
  }

  Future<bool> checkIfUserTokenExist() {
    return providerLocal.checkIsTokenExist();
  }
}
