import 'package:shared_preferences/shared_preferences.dart';
import 'package:single_app/features/user/datasource/user_datasource.dart';
import 'package:single_app/features/user/mapper/login_response_mapper.dart';
import 'package:single_app/features/user/mapper/logout_response_mapper.dart';
import 'package:single_app/features/user/model/user_model.dart';
import 'package:single_app/features/user/repository/storage_constants.dart';
import 'package:single_app/features/user/repository/user_repository.dart';

class UserRepositoryFake implements UserRepository {
  UserRepositoryFake({required this.datasource});

  final UserDatasource datasource;

  @override
  Future<String?> getUsernameOfLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getString(StorageConstants.usernameStorageKey);
  }

  @override
  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();

    if (prefs.getString(StorageConstants.usernameStorageKey) == null) {
      return false;
    }

    return true;
  }

  @override
  Future<(LoginResponse, UserModel?)> login(
    String username,
    String password,
  ) async {
    // do some arbitrary checks
    if (username.length < 4 || password.length < 4) {
      return (LoginResponse.wrongCredentials, null);
    }

    final response = await datasource.login(username, password);

    if (response.$1 == LoginSourceResponse.success) {
      final prefs = await SharedPreferences.getInstance();

      await prefs.setString(StorageConstants.usernameStorageKey, username);
    }

    return (LoginResponseMapper.map(response.$1), response.$2);
  }

  @override
  Future<LogoutResponse> logout() async {
    final response = await datasource.logout();

    final prefs = await SharedPreferences.getInstance();

    await prefs.clear();

    return LogoutResponseMapper.map(response);
  }
}
