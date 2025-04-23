import 'package:flutter/material.dart';

class StylePage extends StatelessWidget {
  const StylePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Icon(Icons.male),
      drawer: Drawer(
        backgroundColor: Colors.deepOrange,
        elevation: 0,
        child: Card(
        ),
      )
    );
  }

}