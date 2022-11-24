import 'package:flutter/material.dart';
import '../components/confirm_button_widget.dart';
import '../components/custom_text_widget.dart';
import '../components/default_padding_widget.dart';
import '../components/text_field_widget.dart';
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
              children: [
                Image.asset('assets/images/porsche.png'),
                SizedBox(
                  height: Responsivity.automatic(40, mediaQueryData),
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
                const CustomTextWidget(
                  title: 'Register',
                ),
                SizedBox(
                  height: Responsivity.automatic(90, mediaQueryData),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
