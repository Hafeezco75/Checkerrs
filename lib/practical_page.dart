import 'package:flutter/material.dart';
import 'package:to_do_app/utils/display_set.dart';

class PracticalPage extends StatefulWidget {
  const PracticalPage({super.key});

  @override
  State<PracticalPage> createState() => _PracticalPageState();
}

class _PracticalPageState extends State<PracticalPage> {
  List toDoList = [
    ["Make A Cup of Coffee", true],
    ["Get a Shopping Voucher", false],
    ["Go To The Cinema To See A Movie", false]
  ];

  void checkBoxState(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][0];
    });
  }

  void createTask() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("TO-DO APP"),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (BuildContext context, int index) {
          return ToDoSet(taskCompleted: toDoList[index][1],
              taskType: toDoList[index][0],
              onChanged: (value) => checkBoxState(value, index)
          );
        },
      ),
    );
  }

}