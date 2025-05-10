import 'package:get/get.dart';

class AskDoubtController extends GetxController {
  RxString? selectedTeacher = RxString('');
  RxString? selectedSubject = RxString('');

  void setSelectedTeacher(String? value) {
    selectedTeacher?.value = value ?? '';
  }

  void setSelectedSubject(String? value) {
    selectedSubject?.value = value ?? '';
  }
}
