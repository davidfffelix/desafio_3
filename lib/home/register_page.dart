import 'package:design_system/design_system.dart';
import 'package:design_system/responsivity.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../login/login_page.dart';
import '../profile_page/profile_page.dart';
import '../validators/validators.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();

  String _userEmail = '';
  final String _userName = '';
  final String _telephone = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        // backgroundColor: const Color(0xffFAFBFB),

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
                        // color: Theme.of(context).backgroundColor,
                        // style: DefaultTheme().defaultTheme.textTheme.bodyLarge
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
                body: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomTextWidget(
                        title: 'Full Name',
                      ),
                      SizedBox(
                        height: Responsivity.automatic(20, mediaQueryData),
                      ),
                      TextFieldWidget(
                        hintText: 'Name',
                        labelText: 'Name',
                        prefixIcon: Icons.person,
                        obscureText: false,
                        validator: (value) => Validators.nameValidator(
                          name: value,
                        ),
                        onChanged: (value) {
                          formKey.currentState?.validate();
                          _userEmail = value;
                        },
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
                      TextFieldWidget(
                        hintText: 'E-mail',
                        labelText: 'E-mail',
                        prefixIcon: Icons.email,
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
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
                      const CustomTextWidget(
                        title: 'Password',
                      ),
                      SizedBox(
                        height: Responsivity.automatic(20, mediaQueryData),
                      ),
                      TextFieldWidget(
                        hintText: 'Password',
                        labelText: 'Password',
                        prefixIcon: Icons.lock,
                        suffixIcon: Icons.visibility,
                        obscureText: true,
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
                        height: Responsivity.automatic(90, mediaQueryData),
                      ),
                      ConfirmButtonWidget(
                        titleButton: 'Sign Up',
                        onPressed: () {},
                      ),
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const ProfilePage(),
                      //   ),
                      // );
                      // },
                      // titleButton: 'Sign Up',
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
