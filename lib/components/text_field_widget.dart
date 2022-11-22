// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../responsivity.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    this.prefixIcon,
    this.suffixIcon,
    this.colorIcon,
  }) : super(key: key);

  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color? colorIcon;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Column(
      children: [
        TextField(
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
            suffixIcon: Icon(
              suffixIcon,
              color: const Color(0xffC0BAEF),
            ),
          ),
        ),
      ],
    );
  }
}
