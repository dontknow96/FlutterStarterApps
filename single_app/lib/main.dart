import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:single_app/app/app.dart';
import 'package:single_app/features/user/datasource/user_datasource_fake.dart';
import 'package:single_app/features/user/repository/user_repository.dart';
import 'package:single_app/features/user/repository/user_repository_fake.dart';

Future<void> bootstrap() async {
  GetIt.I.registerSingleton<UserRepository>(
    UserRepositoryFake(datasource: UserDatasourceFake()),
  );
}

void main() {
  bootstrap();
  runApp(const App());
}
