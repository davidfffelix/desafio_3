import 'dart:io';
import 'package:image_picker/image_picker.dart';

abstract class IPickerImage {
  // Contrato
  Future<File?> getImage();
}

class ImagePickerImpl implements IPickerImage {
  final ImagePicker _imagePicker = ImagePicker();

  @override
  Future<File?> getImage() async {
    late final ImageSource source;

    source = ImageSource.gallery;

    final image = await _imagePicker.pickImage(source: source);
    if (image == null) return null;

    final imageTemporary = File(image.path);
    return imageTemporary;
  }
}
