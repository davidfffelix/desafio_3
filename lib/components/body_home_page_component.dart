import 'package:flutter/material.dart';

import '../responsivity.dart';

class BodyHomePageComponent extends StatelessWidget {
  const BodyHomePageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Responsivity.automatic(20, mediaQueryData),
        vertical: Responsivity.automatic(30, mediaQueryData),
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
          const Text('Full Name'),
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
            'E-mail',
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
                  Icons.mail,
                  color: Color(0xffC0BAEF),
                ),
              ),
            ),
          ),
          SizedBox(
            height: Responsivity.automatic(28, mediaQueryData),
          ),
          const Text('Password'),
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
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Color(0xffC0BAEF),
                ),
                suffixIcon: const Icon(
                  Icons.visibility,
                  color: Color(0xffC0BAEF),
                ),
              ),
              obscureText: true,
            ),
          ),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                Responsivity.automatic(12, mediaQueryData),
              ),
            ),
            color: const Color(0xff938BE2),
            height: Responsivity.automatic(60, mediaQueryData),
            onPressed: () {
              print('Entrar');
            },
            child: const Text(
              'Sign Up',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
