// splash_screen_page.dart
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:startertemplate/pages/auth_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();

    // Wait for 3 seconds then go to MainPage
    Future.delayed(Duration(seconds: 4), () {
      if (mounted) {  // Add this check
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const AuthPage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox.expand(
        child: Lottie.asset(
          'assets/splash_screen/Main Scene.json',
          fit: BoxFit.cover, 
        ),
      ),
    );
  }
}
