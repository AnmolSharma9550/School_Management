import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class GetImageController extends GetxController {
  RxString imagePath = ''.obs;
  Future getImageFromCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      imagePath.value = image.path;
    }
  }

  Future getImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      imagePath.value = image.path.toString();  
    }
  }
}
