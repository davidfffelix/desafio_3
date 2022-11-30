import 'package:design_system/design_system.dart';
import 'login/login_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: DefaultTheme().defaultTheme,
      home: const LoginPage(),
    );
  }
}
