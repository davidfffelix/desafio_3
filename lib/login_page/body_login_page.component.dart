import 'package:flutter/material.dart';
import '../components/confirm_button_widget.dart';
import '../home/home_page.dart';
import '../responsivity.dart';

class BodyLoginPageComponent extends StatelessWidget {
  const BodyLoginPageComponent({super.key});

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
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      height: 30,
                      width: 30,
                      left: 70,
                      top: 70,
                      child: Container(
                        color: Colors.red,
                        child: Container(
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 30,
                        width: 30,
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
                                builder: (context) => const HomePage(),
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
          const Text('Display Name'),
          Padding(
            padding: EdgeInsets.only(
              top: Responsivity.automatic(20, mediaQueryData),
            ),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: Responsivity.automatic(2, mediaQueryData),
                    color: const Color(0xffF1EFFF),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      Responsivity.automatic(12, mediaQueryData),
                    ),
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.person,
                  color: Color(0xffC0BAEF),
                ),
              ),
            ),
          ),
          SizedBox(
            height: Responsivity.automatic(28, mediaQueryData),
          ),
          const Text(
            'CPF',
          ),
          Padding(
            padding: EdgeInsets.only(
              top: Responsivity.automatic(20, mediaQueryData),
            ),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: Responsivity.automatic(2, mediaQueryData),
                    color: const Color(0xffF1EFFF),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      Responsivity.automatic(12, mediaQueryData),
                    ),
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.crop_free,
                  color: Color(0xffC0BAEF),
                ),
              ),
            ),
          ),
          SizedBox(
            height: Responsivity.automatic(28, mediaQueryData),
          ),
          const Text('Telephone'),
          Padding(
            padding: EdgeInsets.only(
              top: Responsivity.automatic(20, mediaQueryData),
            ),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color(0xffF1EFFF),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      Responsivity.automatic(12, mediaQueryData),
                    ),
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.phone,
                  color: Color(0xffC0BAEF),
                ),
              ),
            ),
          ),
          SizedBox(
            height: Responsivity.automatic(28, mediaQueryData),
          ),
          const Text('Country'),
          Padding(
            padding: EdgeInsets.only(
              top: Responsivity.automatic(20, mediaQueryData),
              bottom: Responsivity.automatic(80, mediaQueryData),
            ),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color(0xffF1EFFF),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      Responsivity.automatic(12, mediaQueryData),
                    ),
                  ),
                ),
              ),
            ),
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
