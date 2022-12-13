import 'package:book_store/controllers/book_categories_controller.dart';
import 'package:book_store/controllers/selected_category_controller.dart';
import 'package:get/get.dart';

class BookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookCategoriesController>(
      () => BookCategoriesController(),
    );

    Get.lazyPut<SelectedCategoryController>(
      () => SelectedCategoryController(),
    );
  }
}
