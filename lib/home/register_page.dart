import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../components/app_bar_widget.dart';
import '../components/body_register_widget.dart';
import '../components/header_widget.dart';
import '../login/login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFAFBFB),
        appBar: AppBarWidget(
          appBarColor: const Color(0xffFAFBFB),
          leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back,
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const RegisterPage(),
                ),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(
                firstRow: '👋 Hello, \n Are you new there?',
                secondRow: Row(
                  children: [
                    const Text(
                      'if you have an account /',
                      style: TextStyle(
                        color: Color(0xffD5D4D5),
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: ' Login',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPage(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const BodyRegisterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
