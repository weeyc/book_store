import 'package:book_store/bindings/book_binding.dart';
import 'package:book_store/screens/book_categories.dart';
import 'package:book_store/screens/selected_category.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static String initialRoute = AppRoutes.bookCategories;
  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.bookCategories,
      page: () => const BookCategoriesScreens(),
      binding: BookBinding(),
    ),
    GetPage(
      name: AppRoutes.selectedCategory,
      page: () => const SelectedCategoryScreens(),
      binding: BookBinding(),
    ),
  ];
}
