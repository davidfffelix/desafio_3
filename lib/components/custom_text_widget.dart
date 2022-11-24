// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    Key? key,
    required this.title,
    this.text,
  }) : super(key: key);

  final String title;
  final Widget? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
    );
  }
}
