import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../components/app_bar_widget.dart';
import '../components/body_home_widget.dart';
import '../components/header_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFBFB),
      appBar: AppBarWidget(
        appBarColor: const Color(0xffFAFBFB),
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back,
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(
              firstRow: '👋 Hello,',
              secondRow: 'Are you new there?',
              thirdRow: Row(
                children: [
                  const Text(
                    'if you have an account /',
                    style: TextStyle(
                      color: Color(0xffD5D4D5),
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: ' Login',
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
              ),
            ),
            const BodyHomeWidget(),
          ],
        ),
      ),
    );
  }
}
