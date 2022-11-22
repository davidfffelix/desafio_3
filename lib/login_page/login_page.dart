import 'package:flutter/material.dart';
import '../components/app_bar_widget.dart';
import '../home/home_page.dart';
import 'body_login.widget.dart';
import '../components/header_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            children: const [
              HeaderWidget(
                firstRow: '😎 Setting up your',
                secondRow: 'profile',
                thirdRow: Text('Add your profile photo'),
              ),
              BodyLoginWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
