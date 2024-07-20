import 'package:single_app/features/user/model/user_model.dart';

enum LoginSourceResponse { success, wrongCredentials, unknownError }

enum LogoutSourceResponse { success, unknownError }

abstract class UserDatasource {
  Future<(LoginSourceResponse, UserModel?)> login(String username, String password);

  Future<LogoutSourceResponse> logout();
}
