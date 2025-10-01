import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class AuthProvider extends ChangeNotifier {
  final Dio _dio = Dio();

  bool isLoading = false;
  bool isLoggedIn = false;
  String? token;
  String? errorMessage;

  Future<void> login(String username, String password) async {
    isLoading = true;
    notifyListeners();

    try {
      final formData = FormData.fromMap({
        "username": username,
        "password": password,
      });

      final response = await _dio.post(
        "https://flutter-amr.noviindus.in/api/Login",
        data: formData,
        options: Options(headers: {"Content-Type": "multipart/form-data"}),
      );

      if (response.statusCode == 200) {
        token = response.data["token"]; // adjust key if different
        isLoggedIn = true;
        errorMessage = null;
      } else {
        isLoggedIn = false;
        errorMessage = "Invalid username or password";
      }
    } catch (e) {
      isLoggedIn = false;
      errorMessage = "Something went wrong: $e";
    }

    isLoading = false;
    notifyListeners();
  }

  void logout() {
    isLoggedIn = false;
    token = null;
    errorMessage = null;
    notifyListeners();
  }

  void clearError() {
    errorMessage = null;
    notifyListeners();
  }
}
