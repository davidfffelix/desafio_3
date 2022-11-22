import 'package:flutter/material.dart';
import '../components/pages_app_bar_widget.dart';
import '../components/body_home_page_component.dart';
import '../components/header_page_component.dart';
import '../login_page/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFBFB),
      appBar: PagesAppBarWidget(
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
            HeaderPageComponent(
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
                  TextButton(
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xffD5D4D5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            BodyHomePageComponent(),
          ],
        ),
      ),
    );
  }
}
