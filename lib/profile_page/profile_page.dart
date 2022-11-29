import 'dart:io';
import 'package:design_system/main.dart';
import 'package:design_system/responsivity.dart';
import 'package:flutter/material.dart';
import '../core/image_picker/picker_image.dart';
import '../home/register_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  IPickerImage picker = ImagePickerImpl();
  File? path;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

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
            children: [
              const HeaderWidget(
                firstRow: '😎 Setting up your \nprofile',
                secondRow: Text(
                  'Add your profile photo',
                  style: TextStyle(
                    color: Color(0xffD5D4D5),
                  ),
                ),
              ),
              DefaultPaddingWidget(
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ImagePickWidget(
                      path: path,
                      picker: () async {
                        path = await picker.getImage();
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: Responsivity.automatic(28, mediaQueryData),
                    ),
                    const CustomTextWidget(
                      title: 'Display Name',
                    ),
                    SizedBox(
                      height: Responsivity.automatic(20, mediaQueryData),
                    ),
                    const TextFieldWidget(
                      prefixIcon: Icons.person,
                    ),
                    SizedBox(
                      height: Responsivity.automatic(28, mediaQueryData),
                    ),
                    const CustomTextWidget(
                      title: 'CPF',
                    ),
                    SizedBox(
                      height: Responsivity.automatic(20, mediaQueryData),
                    ),
                    const TextFieldWidget(
                      prefixIcon: Icons.person,
                    ),
                    SizedBox(
                      height: Responsivity.automatic(28, mediaQueryData),
                    ),
                    const CustomTextWidget(
                      title: 'Telephone',
                    ),
                    SizedBox(
                      height: Responsivity.automatic(20, mediaQueryData),
                    ),
                    const TextFieldWidget(
                      prefixIcon: Icons.phone,
                    ),
                    SizedBox(
                      height: Responsivity.automatic(28, mediaQueryData),
                    ),
                    const CustomTextWidget(title: 'Country'),
                    SizedBox(
                      height: Responsivity.automatic(20, mediaQueryData),
                    ),
                    const TextFieldWidget(),
                    SizedBox(
                      height: Responsivity.automatic(90, mediaQueryData),
                    ),
                    ConfirmButtonWidget(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      },
                      titleButton: 'Confirm',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
