import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:single_app/features/user/bloc/user_bloc.dart';
import 'package:single_app/features/user/bloc/user_bloc_event.dart';
import 'package:single_app/features/user/view/login_view.dart';

class AppRouterConfig {
  static const login = '/login';
  static const home = '/home';

  static List<RouteBase> routes() => [
        GoRoute(
          path: login,
          builder: (context, __) => LoginView(
            onSuccessfulLogin: () => GoRouter.of(context).go(home),
          ),
        ),
        GoRoute(
          path: home,
          builder: (context, __) => const Text('home'),
        ),
      ];

  static GoRouter createRouter() => GoRouter(
        routes: routes(),
        initialLocation: login,
        redirect: (context, state) async {
          context.read<UserBloc>().add(const UserBlocEvent.refresh());

          // if (!await GetIt.I.get<UserRepository>().isLoggedIn()) {
          //   if (!(state.topRoute?.path == login ||
          //       state.topRoute?.path == home)) {
          //     return login;
          //   }
          // } else {
          //   if (state.topRoute?.path == login ||
          //       state.topRoute?.path == home) {
          //     return home;
          //   }
          // }

          return null;
        },
      );
}
