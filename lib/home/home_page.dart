import 'package:flutter/material.dart';
import 'app_bar_home_page_component.dart';
import '../components/body_home_page_component.dart';
import 'header_home_page_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFBFB),
      appBar: AppBarHomePageComponent(
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
            HeaderHomePageComponent(),
            BodyHomePageComponent(),
          ],
        ),
      ),
    );
  }
}
