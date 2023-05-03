import 'package:flutter/material.dart';
import 'package:front_ui/auth/forgot_password.dart';
import 'package:front_ui/auth/login.dart';
import 'package:front_ui/auth/register.dart';
import 'package:front_ui/auth/splash.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Authentication Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const LoginScreen(),
      //home: const Register(),
      home: const SplashScreen(),
    );
  }
}
