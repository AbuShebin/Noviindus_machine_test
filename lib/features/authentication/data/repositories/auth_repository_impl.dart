import 'dart:io';
import 'package:noviindus_machine_test/core/error/failure.dart';
import 'package:noviindus_machine_test/features/authentication/data/data_sources/auth_remote_datasource.dart';
import 'package:noviindus_machine_test/features/authentication/data/model/login_request_model.dart';
import 'package:noviindus_machine_test/features/authentication/domain/entities/user_model.dart';
import 'package:noviindus_machine_test/features/authentication/domain/repositories/auth_repository.dart';

import '../../domain/entities/login_request.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<({String token, User user, bool success})> login(LoginRequest request) async {
    try {
      final requestModel = LoginRequestModel.fromEntity(request);
      final response = await remoteDataSource.login(requestModel);

      if (response.status) {

        return (
          token: response.token,
          user: response.userDetails.toEntity(),
          success: true,
        );
      } else {
        throw ServerFailure(response.message);
      }
    } on SocketException {
      throw const NetworkFailure('No internet connection');
    } on HttpException catch (e) {
      throw ServerFailure('Server error: ${e.message}');
    } catch (e) {
      throw ServerFailure('Unexpected error occurred: $e');
    }
  }
}
