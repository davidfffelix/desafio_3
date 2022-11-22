import 'package:flutter/material.dart';

import '../responsivity.dart';

class PagesTextFieldWidget extends StatelessWidget {
  const PagesTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return TextField(
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
          Icons.person,
          color: Color(0xffC0BAEF),
        ),
      ),
    );
  }
}
