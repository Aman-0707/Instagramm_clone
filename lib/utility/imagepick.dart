import 'package:image_picker/image_picker.dart';

Future pickImage(ImageSource source) async {
  final ImagePicker _imgpicker = ImagePicker();

  XFile? _file = await _imgpicker.pickImage(source: source);

  if (_file != null) {
    return await _file.readAsBytes();
  }
}
