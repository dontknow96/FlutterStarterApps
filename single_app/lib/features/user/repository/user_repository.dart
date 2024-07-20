import 'package:single_app/features/user/model/user_model.dart';

enum LoginResponse { success, wrongCredentials, unknownError }

enum LogoutResponse { success, unknownError }

abstract class UserRepository {
  Future<(LoginResponse, UserModel?)> login(String username, String password);

  Future<bool> isLoggedIn();

  Future<String?> getUsernameOfLoggedIn();

  Future<LogoutResponse> logout();
}
