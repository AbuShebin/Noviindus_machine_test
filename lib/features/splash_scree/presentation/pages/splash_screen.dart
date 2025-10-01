import 'package:flutter/material.dart';
import 'package:noviindus_machine_test/features/authentication/presentation/pages/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
        final double h = MediaQuery.of(context).size.height;
    final double w = MediaQuery.of(context).size.width;
    Future.delayed(Duration(seconds: 1),() => Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),)),);
    return Scaffold(
      body: Container(
       width: double.infinity,
          height: double.infinity,
        child: Image.asset(
          fit: BoxFit.cover,
          'lib/assets/splash_screen_background.png',
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
