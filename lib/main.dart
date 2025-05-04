import 'package:act4/initialScreen.dart';
import 'package:act4/loginScreen.dart';
import 'package:act4/homeScreen.dart';
import 'package:act4/registerScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyRoutesApp());

class MyRoutesApp extends StatelessWidget {
  const MyRoutesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre paginas routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const InitialScreen(),
        '/LoginScreen': (context) => const LoginScreen(),
        '/HomeScreen': (context) => const HomeScreen(),
        '/RegisterScreen': (context) => const RegisterScreen()
      },
    );
  }
}
