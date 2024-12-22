import 'package:flutter/material.dart';
import 'package:todoapp/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.deepPurple[400],
        content: SizedBox(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //get user input
              TextField(
                controller: controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    hintText: "Add a new Task"),
              ),

              //button save and cancel
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //save button
                  MyButton(
                    text: "Save",
                    onPressed: onSave,
                  ),
                  SizedBox(width: 8),

                  //cancel button
                  MyButton(
                    text: "Cancel",
                    onPressed: onCancel,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
