import 'package:flutter/material.dart';
import '../responsivity.dart';

class ImageLoginWidget extends StatelessWidget {
  const ImageLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Responsivity.automatic(20, mediaQueryData),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: Responsivity.automatic(200, mediaQueryData),
          width: Responsivity.automatic(200, mediaQueryData),
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
        ),
      ),
    );
  }
}
