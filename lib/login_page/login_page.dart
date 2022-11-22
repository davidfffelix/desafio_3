import 'package:flutter/material.dart';
import '../components/pages_app_bar_widget.dart';
import '../home/home_page.dart';
import 'body_login_page.component.dart';
import '../components/header_page_component.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            children: const [
              HeaderPageComponent(
                firstRow: '😎 Setting up your',
                secondRow: 'profile',
                thirdRow: Text('Add your profile photo'),
              ),
              BodyLoginPageComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
