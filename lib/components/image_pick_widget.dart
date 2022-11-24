import 'package:flutter/material.dart';
import '../core/image_picker/picker_image.dart';
import '../responsivity.dart';

class ImagePick extends StatefulWidget {
  const ImagePick({super.key});

  @override
  State<ImagePick> createState() => _ImagePickState();
}

class _ImagePickState extends State<ImagePick> {
  final IPickerImage _imagePicker = ImagePickerImpl();

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Row(
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
                      _imagePicker.getImage();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}