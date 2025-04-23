import 'package:flutter/material.dart';


class ToDoSet extends StatelessWidget {
  final String taskType;
  final bool taskCompleted;
  Function (bool?) onChanged;


  ToDoSet({super.key,
    required this.taskCompleted,
    required this.taskType,
    required this.onChanged})


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24, top: 12, right: 24),
      child: Container(
        padding: EdgeInsets.all(12.0),
        child: Row(
          children: [
            Checkbox(value: value,
                onChanged: onChanged,
                activeColor: Colors.black,
            ),
            Text(style: ,)
          ],
        ),
      ),
    );
  }}