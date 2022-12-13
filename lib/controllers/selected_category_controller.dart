import 'package:get/get.dart';

class SelectedCategoryController extends GetxController {
  List books = [];
  @override
  void onInit() {
    super.onInit();
    books = Get.arguments;
  }
}
