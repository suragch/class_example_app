import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:math';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
        future: _fbApp,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Sorry, there was an error');
          } else if (snapshot.hasData) {
            return MyHomePage();
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          ElevatedButton(
            child: Text('Update firebase database'),
            onPressed: () {
              print('hi');
              DatabaseReference _testRef = FirebaseDatabase.instance.reference().child("test");
              _testRef.set("Hello ${Random().nextInt(100)}");
            }
          )
        ]),
      ),
    );
  }
}
