import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('New Page')),
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home'
              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings'
              ),

              BottomNavigationBarItem(icon: Icon(Icons.image),
              label: 'Image'
              )
            ]
        ),
        body: Center(
          child: ElevatedButton(onPressed: ()  {},
              child: Text('Welcome to a New Page'))
        ),
      ),
    );
  }
}



