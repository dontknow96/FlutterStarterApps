import 'package:single_app/features/helper/waiter.dart';
import 'package:single_app/features/user/datasource/user_datasource.dart';
import 'package:single_app/features/user/model/user_model.dart';

class UserDatasourceFake implements UserDatasource {
  static const _fakeUsers = {
    'peter': UserModel(
      username: 'peter',
      email: 'peter@mail.com',
      password: 'lustig',
    ),
    'max': UserModel(
      username: 'max',
      email: 'mustermann@mail.com',
      password: 'mustermann',
    ),
    'maria': UserModel(
      username: 'maria',
      email: 'musterfrau@mail.com',
      password: 'musterfrau',
    ),
  };

  @override
  Future<(LoginSourceResponse, UserModel?)> login(
    String username,
    String password,
  ) async {
    await Waiter.waitRandomTime();

    final passwordCheck = _fakeUsers[username];

    if (passwordCheck == null) {
      return (LoginSourceResponse.wrongCredentials, null);
    }

    return (LoginSourceResponse.success, passwordCheck);
  }

  @override
  Future<LogoutSourceResponse> logout() async {
    await Waiter.waitRandomTime();

    return LogoutSourceResponse.success;
  }
}
