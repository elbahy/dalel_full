import 'package:dalal_full/core/functions/custom_navigate.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => customNavigateReplace(path: '/SignupView'),
          child: Text('signup'),
        ),
      ),
    );
  }
}
