import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:single_app/features/user/bloc/user_bloc.dart';
import 'package:single_app/features/user/bloc/user_bloc_event.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({required this.onSuccessfulLogin, super.key});

  final void Function() onSuccessfulLogin;

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    final userBloc = context.read<UserBloc>();

    return Column(
      children: [
        TextField(
          controller: usernameController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'username',
          ),
        ),
        TextFormField(
          controller: passwordController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'password',
          ),
        ),
        MaterialButton(
          onPressed: () => userBloc.add(
            UserBlocEvent.login(
              usernameController.value.text,
              passwordController.value.text,
            ),
          ),
          child: const Text('login'),
        ),
      ],
    );
  }
}
