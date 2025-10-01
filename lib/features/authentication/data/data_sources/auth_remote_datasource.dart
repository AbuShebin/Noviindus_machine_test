import 'package:dio/dio.dart';
import 'package:noviindus_machine_test/core/api/api_constands.dart';
import 'package:noviindus_machine_test/features/authentication/data/model/login_request_model.dart';
import 'package:noviindus_machine_test/features/authentication/data/model/login_response_model.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponseModel> login(LoginRequestModel request);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  Dio dio = Dio();

  @override
  Future<LoginResponseModel> login(LoginRequestModel request) async {
    try {
      final response = await dio.post(
        '${ApiConstands.baseUrl}${ApiConstands.loginEndpoint}',
        data: request.toFormData()
      );

      print("reponse login = ${response.data}");

      return LoginResponseModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
