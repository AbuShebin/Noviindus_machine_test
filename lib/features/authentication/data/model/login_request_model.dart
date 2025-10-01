import '../../domain/entities/login_request.dart';

class LoginRequestModel extends LoginRequest {
  const LoginRequestModel({
    required super.username,
    required super.password,
  });

  Map<String, String> toFormData() {
    return {
      'username': username,
      'password': password,
    };
  }

  factory LoginRequestModel.fromEntity(LoginRequest entity) {
    return LoginRequestModel(
      username: entity.username,
      password: entity.password,
    );
  }
}
