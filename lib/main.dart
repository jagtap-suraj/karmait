import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:karmait/features/auth/screens/login_screen.dart';
import 'package:karmait/features/auth/screens/signup_screen.dart';
import 'package:karmait/theme/pallete.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
// ...

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Karmait',
      theme: Pallete.darkModeAppTheme.copyWith(),
      debugShowCheckedModeBanner: false,
      home: const SignupScreen(),
    );
  }
}
