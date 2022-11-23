import 'package:flutter/material.dart';
import '../components/app_bar_widget.dart';
import '../home/register_page.dart';
import '../components/body_profile.widget.dart';
import '../components/header_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
                  builder: (context) => const RegisterPage(),
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
                firstRow: '😎 Setting up your \nprofile',
                // secondRow: 'profile',
                secondRow: Text(
                  'Add your profile photo',
                  style: TextStyle(
                    color: Color(0xffD5D4D5),
                  ),
                ),
              ),
              BodyProfileWidget(
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
