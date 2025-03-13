import 'package:get/get.dart';
import 'package:sqflite_tudo_app/config/routing.dart';
import 'package:sqflite_tudo_app/features/home/views/home_screen.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeScreen(),
      transition: Transition.fadeIn,
    ),
  ];
}
