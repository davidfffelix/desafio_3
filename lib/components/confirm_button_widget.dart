import 'package:flutter/material.dart';
import '../responsivity.dart';

class ConfirmButtonWidget extends StatelessWidget {
  const ConfirmButtonWidget({
    Key? key,
    this.onPressed,
    required this.titleButton,
  }) : super(key: key);
  final void Function()? onPressed;
  final String titleButton;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Responsivity.automatic(12, mediaQueryData),
        ),
      ),
      color: const Color(0xff938BE2),
      height: Responsivity.automatic(60, mediaQueryData),
      onPressed: onPressed,
      child: Text(
        titleButton,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
