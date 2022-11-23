import 'package:flutter/material.dart';
import 'confirm_button_widget.dart';
import 'custom_text_widget.dart';
import 'text_field_widget.dart';
import '../home/register_page.dart';
import '../responsivity.dart';
import '../profile_page/image_pick_widget.dart';

class BodyProfileWidget extends StatelessWidget {
  const BodyProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Responsivity.automatic(20, mediaQueryData), // Dos lados
        vertical: Responsivity.automatic(30, mediaQueryData), // Cima e baixo
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            Responsivity.automatic(30, mediaQueryData),
          ),
          topRight: Radius.circular(
            Responsivity.automatic(30, mediaQueryData),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const ImagePick(),
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
    );
  }
}
