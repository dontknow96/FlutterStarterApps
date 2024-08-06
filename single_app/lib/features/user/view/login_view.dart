import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:single_app/features/user/bloc/user_bloc.dart';
import 'package:single_app/features/user/bloc/user_bloc_state.dart';
import 'package:single_app/features/user/widget/login_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({required this.onSuccessfulLogin, super.key});

  final void Function() onSuccessfulLogin;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserBlocState>(
      builder: (BuildContext context, UserBlocState state) {
        if (state.requestState == UserBlocRequestState.success) {
          onSuccessfulLogin();
        }

        if (state.requestState == UserBlocRequestState.wrongCredentials) {
          Future.delayed(
            Duration.zero,
                () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('wrong credentials'),
              ),
            ),
          );
        }

        if (state.requestState == UserBlocRequestState.unknownError) {
          Future.delayed(
            Duration.zero,
                () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('unknown Error'),
              ),
            ),
          );
        }

        return Scaffold(
          body: Stack(
            children: [
              if (state.requestState == UserBlocRequestState.waiting)
                const Center(child: CircularProgressIndicator()),
              LoginWidget(
                onSuccessfulLogin: onSuccessfulLogin,
              ),
            ],
          ),
        );
      },
    );
  }
}
