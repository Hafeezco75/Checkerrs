import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('home page')),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(
              child:Icon(
                Icons.favorite,
                size: 48,
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                  Navigator.pushNamed(context, '/Homepage');
              },
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("S E T T I N G S"),
              onTap: () {
                  Navigator.pushNamed(context, '/SettingsPage');
              },
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("A B O U T"),
              onTap: () {

              },
            )
          ]
        ),
      ),
    );
  }

}