import 'package:flutter/material.dart';
import 'package:single_app/features/user/widget/login_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({required this.onSuccessfulLogin, super.key});

  final void Function() onSuccessfulLogin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginWidget(
        onSuccessfulLogin: onSuccessfulLogin,
      ),
    );
  }
}
