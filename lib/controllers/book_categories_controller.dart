import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookCategoriesController extends GetxController {
  List bookCategories = [];

  @override
  void onInit() {
    super.onInit();
    loadAndGroupData();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> loadAndGroupData() async {
    String data = await DefaultAssetBundle.of(Get.context!).loadString("assets/data.json");
    final jsonResult = jsonDecode(data);
    final books = jsonResult['result'];
    bookCategories = books
        .fold({}, (previousValue, element) {
          Map val = previousValue as Map;
          String date = element['categoryName'];
          if (!val.containsKey(date)) {
            val[date] = [];
          }
          val[date]?.add(element);
          return val;
        })
        .entries
        .map((e) => {e.key: e.value})
        .toList();
  }
}
