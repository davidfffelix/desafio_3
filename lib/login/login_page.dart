import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../components/confirm_button_widget.dart';
import '../components/custom_text_widget.dart';
import '../components/default_padding_widget.dart';
import '../components/image_login_widget.dart';
import '../components/text_field_widget.dart';
import '../components/drop_down_widget.dart';
import '../home/register_page.dart';
import '../responsivity.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFAFBFB),
        body: SingleChildScrollView(
          child: DefaultPaddingWidget(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ImageLoginWidget(),
                SizedBox(
                  height: Responsivity.automatic(30, mediaQueryData),
                ),
                const CustomTextWidget(title: 'E-mail or Name'),
                SizedBox(
                  height: Responsivity.automatic(20, mediaQueryData),
                ),
                const TextFieldWidget(
                  prefixIcon: Icons.person,
                ),
                SizedBox(
                  height: Responsivity.automatic(28, mediaQueryData),
                ),
                const CustomTextWidget(title: 'Password'),
                SizedBox(
                  height: Responsivity.automatic(20, mediaQueryData),
                ),
                const TextFieldWidget(
                  prefixIcon: Icons.lock,
                  suffixIcon: Icons.visibility,
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
                                  builder: (context) => DropDownWidget(),
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
