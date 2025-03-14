import 'package:flutter/material.dart';
import 'package:sqflite_tudo_app/utils/colors.dart';
import 'package:sqflite_tudo_app/widgets/custom_appbar.dart';
import 'package:sqflite_tudo_app/widgets/custom_button.dart';
import 'package:sqflite_tudo_app/widgets/custom_textfield.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  static var priorities = ['High', 'Low'];
  String? selectedPriority;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Add Note',
        backgroundColor: AppColors.scaffoldBackground,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Select Priority",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(6),
              ),
              child: DropdownButton(
                value: selectedPriority,
                dropdownColor: AppColors.primaryColor,
                itemHeight: 50,
                isExpanded: true,
                underline: SizedBox.shrink(),

                items:
                    priorities.map((String priority) {
                      return DropdownMenuItem(
                        value: priority,
                        child: Text(priority),
                      );
                    }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedPriority = newValue;
                  });
                },
                hint: const Text("Choose Priority"),
              ),
            ),

            const SizedBox(height: 15),
            const Text(
              "Title",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            CustomTextfield(hintText: 'Title', controller: titleController),
            const SizedBox(height: 15),
            const Text(
              "Description",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            CustomTextfield(
              hintText: 'description',
              maxline: 6,
              controller: descriptionController,
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: customButton(
                    name: 'Save',
                    onCallBack: () {},
                    context: context,
                  ),
                ),

                SizedBox(width: 12),
                Expanded(
                  child: customButton(
                    name: 'Delete',
                    onCallBack: () {},
                    context: context,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
