

import 'package:noviindus_machine_test/features/authentication/domain/entities/login_request.dart';
import 'package:noviindus_machine_test/features/authentication/domain/entities/user_model.dart';

abstract class AuthRepository {
  Future<({String token, User user, bool success})> login(LoginRequest request);
}
