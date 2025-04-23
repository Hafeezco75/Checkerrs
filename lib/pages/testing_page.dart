import 'package:flutter/material.dart';

class TestingPage extends StatefulWidget {
  const TestingPage({super.key});

  @override
  State<TestingPage> createState() => _TestingPageState();
  }

  class _TestingPageState extends State<TestingPage>{

    TextEditingController myController = TextEditingController();

  String greetMessage = "";

  void greetUser() {
    setState(() {
      greetMessage = "Hello, " + myController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(padding:
        const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextField(
            controller: myController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Type your name here....",
            ),
          ),
            ElevatedButton(onPressed: greetUser,
                child: Text("Tap"))
          ],
        ),
      ),
      )
    );
  }
}


