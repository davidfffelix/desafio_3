// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../responsivity.dart';

class DefaultPaddingWidget extends StatelessWidget {
  const DefaultPaddingWidget({
    Key? key,
    required this.body,
  }) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Container(
      child: body,
      padding: EdgeInsets.symmetric(
        horizontal: Responsivity.automatic(20, mediaQueryData), // Dos lados
        vertical: Responsivity.automatic(30, mediaQueryData), // Cima e baixo
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
    );
  }
}
