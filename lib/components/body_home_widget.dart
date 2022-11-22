import 'package:flutter/material.dart';
import '../responsivity.dart';
import 'confirm_button_widget.dart';
import 'custom_text_widget.dart';
import 'text_field_widget.dart';

class BodyHomeWidget extends StatelessWidget {
  const BodyHomeWidget({
    Key? key,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CustomTextWidget(
            title: 'Full Name',
          ),
          const SizedBox(
            height: 20,
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
            onPressed: () {},
            titleButton: 'Sign Up',
          ),
        ],
      ),
    );
  }
}
