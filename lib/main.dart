import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HTTP requests')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text(
                'GET',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: _makeGetRequest,
            ),
            ElevatedButton(
              child: Text(
                'POST',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: _makePostRequest,
            ),
            ElevatedButton(
              child: Text(
                'PUT',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: _makePutRequest,
            ),
            ElevatedButton(
              child: Text(
                'DELETE',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: _makeDeleteRequest,
            ),
          ],
        ),
      ),
    );
  }

  // Button onPressed methods

  void _makeGetRequest() async {}

  void _makePostRequest() async {}

  void _makePutRequest() async {}

  void _makeDeleteRequest() async {}
}
