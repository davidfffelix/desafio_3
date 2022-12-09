import 'package:design_system/design_system.dart';
import 'package:design_system/responsivity.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../home/register_page.dart';
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
            body: Form(
              key: formKey,
              child: Column(
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
                    labelText: 'E-mail',
                    hintText: 'Type your e-mail',
                    prefixIcon: Icons.person,
                    keyboardType: TextInputType.emailAddress,
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
                    labelText: 'Password',
                    hintText: 'Type your password',
                    prefixIcon: Icons.lock,
                    suffixIcon: Icons.visibility,
                    obscureText: true,
                    validator: (value) {
                      // Verifica se o valor é válido
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
                    titleButton: 'Sign In',
                    onPressed: () {
                      final isValid = formKey.currentState!.validate();
                      if (isValid == false) {
                        return;
                      }
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
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
                                    builder: (context) => const RegisterPage(),
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
      ),
    );
  }
}
