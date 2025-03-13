import 'package:flutter/material.dart';
import 'package:sqflite_tudo_app/utils/colors.dart';

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
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: listItem,
          shrinkWrap: true,

          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Card(
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
