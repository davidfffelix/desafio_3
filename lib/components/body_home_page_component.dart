// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../responsivity.dart';
import 'confirm_button_widget.dart';

class BodyHomePageComponent extends StatelessWidget {
  const BodyHomePageComponent({
    Key? key,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  final IconData? prefixIcon;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Full Name'),
        Padding(
          padding: EdgeInsets.only(
            top: Responsivity.automatic(20, mediaQueryData),
          ),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: Responsivity.automatic(2, mediaQueryData),
                  color: const Color(0xffF1EFFF),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    Responsivity.automatic(12, mediaQueryData),
                  ),
                ),
              ),
              prefixIcon: Icon(
                prefixIcon,
                color: const Color(0xffC0BAEF),
              ),
            ),
          ),
        ),
        SizedBox(
          height: Responsivity.automatic(28, mediaQueryData),
        ),
        const Text(
          'E-mail',
        ),
        Padding(
          padding: EdgeInsets.only(
            top: Responsivity.automatic(20, mediaQueryData),
          ),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: Responsivity.automatic(2, mediaQueryData),
                  color: const Color(0xffF1EFFF),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    Responsivity.automatic(12, mediaQueryData),
                  ),
                ),
              ),
              prefixIcon: const Icon(
                Icons.mail,
                color: Color(0xffC0BAEF),
              ),
            ),
          ),
        ),
        SizedBox(
          height: Responsivity.automatic(28, mediaQueryData),
        ),
        const Text('Password'),
        Padding(
          padding: EdgeInsets.only(
            top: Responsivity.automatic(20, mediaQueryData),
            bottom: Responsivity.automatic(80, mediaQueryData),
          ),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 2,
                  color: Color(0xffF1EFFF),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    Responsivity.automatic(12, mediaQueryData),
                  ),
                ),
              ),
              prefixIcon: const Icon(
                Icons.lock,
                color: Color(0xffC0BAEF),
              ),
              suffixIcon: const Icon(
                Icons.visibility,
                color: Color(0xffC0BAEF),
              ),
            ),
            obscureText: true,
          ),
        ),
        ConfirmButtonWidget(
          onPressed: () {},
          titleButton: 'Sign Up',
        ),
      ],
    );
  }
}
