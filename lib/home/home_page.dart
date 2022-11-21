import 'package:flutter/material.dart';
import '../components/pages_app_bar_widget.dart';
import '../components/body_home_page_component.dart';
import '../login_page/header_page_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFBFB),
      appBar: PagesAppBarWidget(
        appBarColor: Colors.white,
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
          children: const [
            HeaderPageComponent(
              firstRow: '👋 Hello,',
              secondRow: 'Are you new there?',
              thirdRow: 'if you have an account / Login',
            ),
            BodyHomePageComponent(),
          ],
        ),
      ),
    );
  }
}
