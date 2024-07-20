import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:single_app/features/user/bloc/user_bloc.dart';
import 'package:single_app/features/user/bloc/user_bloc_state.dart';
import 'package:single_app/features/user/repository/user_repository.dart';
import 'package:single_app/navigation/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => UserBloc(
            const UserBlocState(loggedIn: false),
            GetIt.I.get<UserRepository>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouterConfig.createRouter(),
      ),
    );
  }
}
