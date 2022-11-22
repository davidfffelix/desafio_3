import 'package:flutter/material.dart';
import '../responsivity.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.title,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  final String title;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Responsivity.automatic(20, mediaQueryData),
        vertical: Responsivity.automatic(30, mediaQueryData),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            Responsivity.automatic(30, mediaQueryData),
          ),
          topRight: Radius.circular(
            Responsivity.automatic(30, mediaQueryData),
          ),
        ),
      ),
      child: Column(
        children: [
          Text(title),
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
            ),
          ),
        ],
      ),
    );
  }
}
