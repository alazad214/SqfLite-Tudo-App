import 'package:get/get.dart';
import 'package:sqflite_tudo_app/config/routing.dart';
import 'package:sqflite_tudo_app/features/add_note/views/add_note_screen.dart';
import 'package:sqflite_tudo_app/features/home/views/home_screen.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.addNote,
      page: () => AddNoteScreen(),
      transition: Transition.fadeIn,
    ),
  ];
}
