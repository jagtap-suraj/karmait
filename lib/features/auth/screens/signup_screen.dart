import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:karmait/core/common/build_divider.dart';
import 'package:karmait/core/common/login_button.dart';
import 'package:karmait/core/common/navigation_links.dart';
import 'package:karmait/core/common/sign_in_button.dart';
import 'package:karmait/core/common/user_field.dart';
import 'package:karmait/core/constants/constants.dart';
import 'package:karmait/features/auth/repository/google_sign_in.dart';
import 'package:karmait/theme/pallete.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24),
              const Text(
                'Dive into Karmait',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 0.5),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  Constants.loginEmotePath,
                  height: 300,
                ),
              ),
              SignInButton(loginMethod: AuthService().googleLogin),
              const Row(
                children: <Widget>[
                  BuildDivider(),
                  Text('or', style: TextStyle(color: Colors.grey)),
                  BuildDivider(),
                ],
              ),
              const SizedBox(height: 8),
              UserField(hintText: 'Email or Phone No', onPressed: () {}),
              const SizedBox(height: 16),
              const LinkToLogin()
            ],
          ),
        ),
      ),
    );
  }
}
