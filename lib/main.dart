

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'MyWonderfulMe',
          style: TextStyle(fontSize: 20),
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: Text('Small'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Medium'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Large'),
            ),
          ],
        )
      ],
    );
  }
}