import 'package:flutter/material.dart';
import 'package:startertemplate/pages/login_page.dart';

/*

S T A R T

This is the starting point for all apps. 
Everything starts at the main function

*/
void main() {
  // lets run our app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF004AAD),
        primarySwatch: const MaterialColor(
          0xFF1E88E5,
          <int, Color>{
          50: Color(0xFFEAF6FF),
          100: Color(0xFFB8E0FF),
          200: Color(0xFF85CBFF),
          300: Color(0xFF52B5FF),
          400: Color(0xFF2FA0F0),
          500: Color(0xFF1E88E5),
          600: Color(0xFF176ABF),
          700: Color(0xFF125099),
          800: Color(0xFF0D3673),
          900: Color(0xFF08224D),
          },
        ),
      ),
      // this is bringing us to the LoginPage first
      home: LoginPage(),
    );
  }
}
