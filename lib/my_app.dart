import 'package:book_store/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Book Store",
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      initialRoute: AppPages.initialRoute,
      getPages: AppPages.routes,
    );
  }
}
