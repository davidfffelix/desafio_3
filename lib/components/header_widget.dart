import 'package:flutter/material.dart';
import '../responsivity.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.firstRow,
    required this.secondRow,
  }) : super(key: key);

  final String firstRow;
  final Widget secondRow;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: Responsivity.automatic(20, mediaQueryData),
            right: Responsivity.automatic(20, mediaQueryData),
            bottom: Responsivity.automatic(30, mediaQueryData),
            top: Responsivity.automatic(20, mediaQueryData),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                firstRow,
              ),
              SizedBox(
                height: Responsivity.automatic(10, mediaQueryData),
              ),
              // Text(secondRow),
              SizedBox(
                height: Responsivity.automatic(24, mediaQueryData),
              ),
              secondRow,
            ],
          ),
        ),
      ],
    );
  }
}
