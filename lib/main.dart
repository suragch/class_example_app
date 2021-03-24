import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {

  //String fruit = 'Apples';
  final fruitNotfier = ValueNotifier<String>('apples');

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //color: Colors.yellow,
        child: Column(
          children: [
            SizedBox(height: 100),
            ValueListenableBuilder<String>(
              valueListenable: fruitNotfier,
              builder: (context, value, child) {
                return Text(value);
              },
            ),

            SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                print('I was clicked.');

                fruitNotfier.value = 'Bananas';
              },
              child: Text('Click me'),
            ),
          ],
        ),
      ),
    );
  }
}
