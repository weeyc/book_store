import 'package:book_store/controllers/selected_category_controller.dart';
import 'package:book_store/widgets/book.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectedCategoryScreens extends GetView<SelectedCategoryController> {
  const SelectedCategoryScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(builder: (SelectedCategoryController controller) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Selected Category"),
        ),
        body: ListView.builder(
          itemCount: controller.books.length,
          itemBuilder: (context, index) {
            return BookTile(
              title: controller.books[index]["title"],
              subtitle: controller.books[index]["authorName"],
              url: controller.books[index]['bookCoverUrl'],
            );
          },
        ),
      );
    });
  }
}
