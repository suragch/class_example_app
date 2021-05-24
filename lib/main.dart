import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text('Camera demo'),
          ),
          ListTile(
            title: Text('Microphone demo'),
          ),
          ListTile(
            title: Text('GPS demo'),
          ),
        ],
      ),
    );
  }
}

