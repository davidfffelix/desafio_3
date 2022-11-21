import 'package:flutter/material.dart';
import '../components/app_bar_component.dart';
import '../home/home_page.dart';
import 'body_login_page.component.dart';
import 'header_page_component.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFAFBFB),
        appBar: AppBarComponent(
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
                firstRow: '😎 Setting up your',
                secondRow: 'profile',
                thirdRow: 'Add your profile photo',
              ),
              BodyLoginPageComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
