import 'package:design_system/design_system.dart';
import 'home/register_page.dart';
import 'login/login_page.dart';
import 'package:flutter/material.dart';
import 'profile_page/profile_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: DefaultTheme().defaultTheme,
      initialRoute: '/login',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/login':
            return MaterialPageRoute(builder: (context) => const LoginPage());
          case '/signup':
            return MaterialPageRoute(
                builder: (context) => const RegisterPage());
          case '/profile':
            return MaterialPageRoute(builder: (context) => const ProfilePage());
        }
      },
    );
  }
}
