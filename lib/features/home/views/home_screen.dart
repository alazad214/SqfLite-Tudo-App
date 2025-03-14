import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sqflite_tudo_app/config/routing.dart';
import 'package:sqflite_tudo_app/utils/colors.dart';
import 'package:sqflite_tudo_app/widgets/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int listItem = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'SqfLite Tudo App',
        leadingVisible: true,
        centerTitle: true,
        backgroundColor: AppColors.scaffoldBackground,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: listItem,
          shrinkWrap: true,

          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.addNote);
              },
              child: Card(
                color: Colors.accents[index % Colors.accents.length],
                child: ListTile(
                  title: Text('Tudo list 1'),
                  subtitle: Text('Tudo list subtitle 1'),
                  leading: CircleAvatar(child: Icon(Icons.list_alt)),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete, color: AppColors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
     
     
     
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, color: AppColors.green),
      ),
    );
  }
}
