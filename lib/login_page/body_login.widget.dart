import 'package:flutter/material.dart';
import '../components/confirm_button_widget.dart';
import '../components/custom_text_widget.dart';
import '../components/text_field_widget.dart';
import '../home/home_page.dart';
import '../responsivity.dart';

class BodyLoginWidget extends StatelessWidget {
  const BodyLoginWidget({super.key});

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.bottomRight,
                height: Responsivity.automatic(100, mediaQueryData),
                width: Responsivity.automatic(100, mediaQueryData),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/porsche.png'),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      Responsivity.automatic(20, mediaQueryData),
                    ),
                    topRight: Radius.circular(
                      Responsivity.automatic(20, mediaQueryData),
                    ),
                    bottomLeft: Radius.circular(
                      Responsivity.automatic(20, mediaQueryData),
                    ),
                    bottomRight: Radius.circular(
                      Responsivity.automatic(20, mediaQueryData),
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        height: Responsivity.automatic(30, mediaQueryData),
                        width: Responsivity.automatic(30, mediaQueryData),
                        decoration: const BoxDecoration(
                          color: Color(0xff928AE2),
                          shape: BoxShape.circle,
                        ),
                        child: GestureDetector(
                          child: const Icon(
                            color: Colors.white,
                            size: 16,
                            Icons.photo_camera,
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                // builder: (context) => const HomePage(),
                                builder: (context) => const pickImage(),

                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
            onPressed: () {},
            titleButton: 'Confirm',
          ),
        ],
      ),
    );
  }
}
