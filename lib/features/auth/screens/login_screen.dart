import 'package:flutter/material.dart';
import 'package:karmait/core/common/sign_in_button.dart';
import 'package:karmait/core/constants/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset(
            Constants.logoPath,
            height: 80,
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            const SizedBox(height: 30),
            const Text(
              'Dive into Karmait',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 0.5),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                Constants.loginEmotePath,
                height: 400,
              ),
            ),
            const SizedBox(height: 20),
            const SignInButton(),
          ],
        ),
      ),
    );
  }
}
