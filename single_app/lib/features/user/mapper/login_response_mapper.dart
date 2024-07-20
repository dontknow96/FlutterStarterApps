import 'package:single_app/features/user/datasource/user_datasource.dart';
import 'package:single_app/features/user/repository/user_repository.dart';

class LoginResponseMapper {
  static final Map<LoginSourceResponse, LoginResponse> _conversion = {
    LoginSourceResponse.success: LoginResponse.success,
    LoginSourceResponse.wrongCredentials: LoginResponse.wrongCredentials,
    LoginSourceResponse.unknownError: LoginResponse.unknownError,
  };

  static LoginResponse map(LoginSourceResponse toMap) {
    return LoginResponseMapper._conversion[toMap] ?? LoginResponse.unknownError;
  }
}
