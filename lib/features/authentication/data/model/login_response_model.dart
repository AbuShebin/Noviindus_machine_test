
import 'package:noviindus_machine_test/features/authentication/domain/entities/user_model.dart';

class LoginResponseModel {
  final bool status;
  final String message;
  final String token;
  final bool isSuperuser;
  final UserDetailsModel userDetails;

  const LoginResponseModel({
    required this.status,
    required this.message,
    required this.token,
    required this.isSuperuser,
    required this.userDetails,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      status: json['status'] ?? false,
      message: json['message'] ?? '',
      token: json['token'] ?? '',
      isSuperuser: json['is_superuser'] ?? false,
      userDetails: UserDetailsModel.fromJson(json['user_details'] ?? {}),
    );
  }
}

class UserDetailsModel extends User {
  const UserDetailsModel({
    required super.id,
    required super.name,
    required super.phone,
    required super.email,
    required super.username,
    required super.isAdmin,
    required super.isActive,
    required super.createdAt,
  });

  factory UserDetailsModel.fromJson(Map<String, dynamic> json) {
    return UserDetailsModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      phone: json['phone'] ?? '',
      email: json['mail'] ?? '',
      username: json['username'] ?? '',
      isAdmin: json['is_admin'] ?? false,
      isActive: json['is_active'] ?? true,
      createdAt: DateTime.tryParse(json['created_at'] ?? '') ?? DateTime.now(),
    );
  }

  User toEntity() {
    return User(
      id: id,
      name: name,
      phone: phone,
      email: email,
      username: username,
      isAdmin: isAdmin,
      isActive: isActive,
      createdAt: createdAt,
    );
  }
}
