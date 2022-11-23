import 'package:flutter/material.dart';
import '../responsivity.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Responsivity.automatic(12, mediaQueryData),
        ),
      ),
      color: const Color(0xff938BE2),
      height: Responsivity.automatic(60, mediaQueryData),
      onPressed: () {
        print('Confirmar');
      },
      child: const Text(
        'Confirm',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
