import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../responsivity.dart';

class HeaderHomePageComponent extends StatelessWidget {
  const HeaderHomePageComponent({super.key});

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
              // const Text('👋 Hello,'),
              SizedBox(
                height: Responsivity.automatic(10, mediaQueryData),
              ),
              // const Text('Are you new there?'),
              SizedBox(
                height: Responsivity.automatic(24, mediaQueryData),
              ),
              Row(
                // TODO: Verificar fazer TextSpan com Ewerton
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(text: 'if you have an account / '),
                        TextSpan(
                          text: 'Login',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ), // TODO: Correção do TextSpan e uma linha com Ewerton
            ],
          ),
        ),
      ],
    );
  }
}
