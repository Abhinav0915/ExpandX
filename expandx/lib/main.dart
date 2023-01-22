import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

void main() {
  runApp(const ExpandX());
}

class ExpandX extends StatelessWidget {
  const ExpandX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const login(),
        '/signup': (context) => const signup(),
        
      },
    );
  }
}
