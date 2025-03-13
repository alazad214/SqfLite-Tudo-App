import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'config/app_pages.dart';
import 'config/routing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SqfLite Tudo App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.HOME,
      getPages: AppPages.routes,
    );
  }
}
