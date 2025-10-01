import 'package:flutter/material.dart';
import 'package:noviindus_machine_test/features/home/presentation/pages/home_screen.dart';
import 'package:noviindus_machine_test/features/splash_scree/presentation/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'Poppins'
      ),
      home: BookingListScreen(),
    );
  }
}