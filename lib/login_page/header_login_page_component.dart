import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../responsivity.dart';

class HeaderLoginPageComponent extends StatelessWidget {
  const HeaderLoginPageComponent({super.key});

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
              const Text('😎 Setting up your'),
              SizedBox(
                height: Responsivity.automatic(10, mediaQueryData),
              ),
              const Text('profile'),
              SizedBox(
                height: Responsivity.automatic(24, mediaQueryData),
              ),
              const Text(
                'Add your profile photo',
                style: TextStyle(
                  color: Color(0xffDADBDB),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
