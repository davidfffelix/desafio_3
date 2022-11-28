import 'package:design_system/components/app_bar_widget.dart';
import 'package:design_system/components/confirm_button_widget.dart';
import 'package:design_system/components/custom_text_widget.dart';
import 'package:design_system/components/default_padding_widget.dart';
import 'package:design_system/components/header_widget.dart';
import 'package:design_system/components/text_field_widget.dart';
import 'package:design_system/responsivity.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../login/login_page.dart';
import '../profile_page/profile_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

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
              DefaultPaddingWidget(
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomTextWidget(
                      title: 'Full Name',
                    ),
                    SizedBox(
                      height: Responsivity.automatic(20, mediaQueryData),
                    ),
                    const TextFieldWidget(
                      prefixIcon: Icons.person,
                    ),
                    SizedBox(
                      height: Responsivity.automatic(28, mediaQueryData),
                    ),
                    const CustomTextWidget(
                      title: 'E-mail',
                    ),
                    SizedBox(
                      height: Responsivity.automatic(20, mediaQueryData),
                    ),
                    const TextFieldWidget(
                      prefixIcon: Icons.email,
                    ),
                    SizedBox(
                      height: Responsivity.automatic(28, mediaQueryData),
                    ),
                    const CustomTextWidget(
                      title: 'Password',
                    ),
                    SizedBox(
                      height: Responsivity.automatic(20, mediaQueryData),
                    ),
                    const TextFieldWidget(
                      prefixIcon: Icons.lock,
                      suffixIcon: Icons.visibility,
                    ),
                    SizedBox(
                      height: Responsivity.automatic(90, mediaQueryData),
                    ),
                    ConfirmButtonWidget(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfilePage(),
                          ),
                        );
                      },
                      titleButton: 'Sign Up',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
