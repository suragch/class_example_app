import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

class BodyWidget extends StatefulWidget {
  const BodyWidget({
    Key key,
  }) : super(key: key);

  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  var myFontSize = 20.0;
  @override
  void initState() {
    _getFontSize();
    super.initState();
  }

  Future<void> _getFontSize() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    myFontSize = prefs.getDouble('UserFontSize') ?? 20.0;
  }

  Future<void> _saveFontSize(double fontSize) async {
    myFontSize = fontSize;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble('UserFontSize', fontSize);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "My wonderful app.",
          style: TextStyle(fontSize: myFontSize),
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() async {

                  _saveFontSize(10.0);
                });
              },
              child: Text('Small'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() async {
                  _saveFontSize(20.0);
                });
              },
              child: Text('Medium'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() async {
                  _saveFontSize(50.0);
                });
              },
              child: Text('Large'),
            ),
          ],
        )
      ],
    );
  }
}
