import 'package:flutter/material.dart';
import 'package:karmait/features/auth/screens/login_screen.dart';
import 'package:karmait/features/auth/screens/signup_screen.dart';
import 'package:karmait/theme/pallete.dart';

class LinkToSignup extends StatelessWidget {
  const LinkToSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('New to Karmait? ', style: TextStyle(fontSize: 14)),
        InkWell(
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const SignupScreen(),
              ),
            );
          },
          child: const Text(
            'Sign up',
            style: TextStyle(fontSize: 14, color: Pallete.linkColor),
          ),
        ),
      ],
    );
  }
}

class LinkToLogin extends StatelessWidget {
  const LinkToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Already a Karmait user? ', style: TextStyle(fontSize: 14)),
        InkWell(
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          },
          child: const Text(
            'Sign in',
            style: TextStyle(fontSize: 14, color: Pallete.linkColor),
          ),
        ),
      ],
    );
  }
}
