import 'package:desafio_3/profile_page/profile_page.dart';
import 'package:design_system/design_system.dart';
import 'package:design_system/responsivity.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../validators/validators.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  String _userEmail = '';
  String _userName = '';
  String _telephone = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        // backgroundColor: const Color(0xffFAFBFB),
        body: SingleChildScrollView(
          child: DefaultPaddingWidget(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ImageLoginWidget(),
                SizedBox(
                  height: Responsivity.automatic(30, mediaQueryData),
                ),
                const CustomTextWidget(title: 'E-mail'),
                SizedBox(
                  height: Responsivity.automatic(20, mediaQueryData),
                ),
                TextFieldWidget(
                  hintText: 'E-mail',
                  labelText: 'E-mail',
                  prefixIcon: Icons.person,
                  onChanged: (value) {
                    _userEmail = value;
                  },
                  validator: (value) {
                    return Validators.emailValidator(
                    email: value,
                  );
                  },
                ),
                SizedBox(
                  height: Responsivity.automatic(28, mediaQueryData),
                ),
                const CustomTextWidget(title: 'Password'),
                SizedBox(
                  height: Responsivity.automatic(20, mediaQueryData),
                ),
                TextFieldWidget(
                  hintText: 'Password',
                  labelText: 'Password',
                  prefixIcon: Icons.lock,
                  suffixIcon: Icons.visibility,
                  onChanged: (value) {
                    _password = value;
                  },
                  validator: (value) {
                    return Validators.passwordValidator(
                    password: value,
                  );
                  },
                ),
                SizedBox(
                  height: Responsivity.automatic(40, mediaQueryData),
                ),
                SizedBox(
                  height: Responsivity.automatic(30, mediaQueryData),
                ),
                ConfirmButtonWidget(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  titleButton: 'Sign In',
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(
                    Responsivity.automatic(20, mediaQueryData),
                  ),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: "Don't have an account yet? - ",
                        ),
                        TextSpan(
                          text: 'Register',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  // builder: (context) => const RegisterPage(),
                                  builder: (context) => const ProfilePage(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
