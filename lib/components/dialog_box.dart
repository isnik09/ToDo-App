import 'package:flutter/material.dart';
import 'package:todo_app/components/my_custom_button.dart';
import 'package:todo_app/utils/colors.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final textController;

  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.textController,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors().yellow,
      content: SizedBox(
        height: 200,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "task name",
              ),
            ),
            // Save button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                  buttonName: "Save",
                  // textColor: Colors.red,
                  buttonColor: AppColors().green,
                  onPressed: onSave,
                ),
                CustomButton(
                    buttonName: "Cancel",
                    onPressed: onCancel,
                    buttonColor: AppColors().red),
              ],
            ),
            // Cancel button
          ],
        ),
      ),
    );
  }
}
