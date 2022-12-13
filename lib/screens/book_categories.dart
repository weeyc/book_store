import 'package:book_store/controllers/book_categories_controller.dart';
import 'package:book_store/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookCategoriesScreens extends GetView<BookCategoriesController> {
  const BookCategoriesScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookCategoriesController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(title: const Text("Book Categories")),
          body: ListView.builder(
            itemCount: controller.bookCategories.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(controller.bookCategories[index].keys.first),
                onTap: () {
                  Get.toNamed(AppRoutes.selectedCategory, arguments: controller.bookCategories[index].values.first);
                },
              );
            },
          ),
        );
      },
    );
  }
}
