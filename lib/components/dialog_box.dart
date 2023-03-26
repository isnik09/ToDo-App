import 'package:flutter/material.dart';
import 'package:todo_app/components/my_custom_button.dart';
import 'package:todo_app/data/database.dart';

class DialogBox extends StatelessWidget {
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
      backgroundColor: Colors.redAccent,
      content: Column(
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
                buttonColor: Colors.yellowAccent,
                onPressed: onSave,
              ),
              CustomButton(
                  buttonName: "Cancel",
                  onPressed: onCancel,
                  buttonColor: Colors.green),
            ],
          ),
          // Cancel button
        ],
      ),
    );
  }
}
