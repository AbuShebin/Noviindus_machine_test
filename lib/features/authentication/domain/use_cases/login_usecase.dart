import 'package:noviindus_machine_test/features/authentication/domain/entities/user_model.dart';

import '../entities/login_request.dart';
import '../repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<({String token, User user, bool success})> call(LoginRequest request) async {
    return await repository.login(request);
  }
}
