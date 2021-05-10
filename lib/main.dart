import 'package:flutter/material.dart';
import 'package:mongol/mongol.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 200,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: MongolText(
              'ᠰᠠᠶᠢᠨ ᠪᠠᠶᠢᠨ᠎ᠠ ᠤᠤ ᠨᠠᠷᠢᠯᠢᠭ ᠬᠢᠴᠡᠲᠡᠢ ᠲᠠᠪᠤᠨ ᠵᠦᠢᠯ ᠦᠨ ᠲᠢᠭ᠄ ᠴᠠᠭᠠᠨ᠂ ᠤᠷᠭ᠎ᠠ᠂ ᠪᠢᠴᠢᠮᠡᠯ᠂ ᠤᠷᠭ᠎ᠠ ︵ᠮᠣᠰᠺᠸᠠ︶᠂ ᠤᠷᠭ᠎ᠠ ᠨᠠᠷᠢᠨ ᠨᠠᠷᠢᠯᠢᠭ ᠬᠢᠴᠡᠲᠡᠢ ᠲᠠᠪᠤᠨ ᠵᠦᠢᠯ ᠦᠨ ᠲᠢᠭ᠄ ᠴᠠᠭᠠᠨ᠂ ᠤᠷᠭ᠎ᠠ᠂ ᠪᠢᠴᠢᠮᠡᠯ᠂ ᠤᠷᠭ᠎ᠠ ︵ᠮᠣᠰᠺᠸᠠ︶᠂ ᠤᠷᠭ᠎ᠠ ᠨᠠᠷᠢᠨ ᠨᠠᠷᠢᠯᠢᠭ ᠬᠢᠴᠡᠲᠡᠢ ᠲᠠᠪᠤᠨ ᠵᠦᠢᠯ ᠦᠨ ᠲᠢᠭ᠄ ᠴᠠᠭᠠᠨ᠂ ᠤᠷᠭ᠎ᠠ᠂ ᠪᠢᠴᠢᠮᠡᠯ᠂ ᠤᠷᠭ᠎ᠠ ︵ᠮᠣᠰᠺᠸᠠ︶᠂ ᠤᠷᠭ᠎ᠠ ᠨᠠᠷᠢᠨ ᠨᠠᠷᠢᠯᠢᠭ ᠬᠢᠴᠡᠲᠡᠢ ᠲᠠᠪᠤᠨ ᠵᠦᠢᠯ ᠦᠨ ᠲᠢᠭ᠄ ᠴᠠᠭᠠᠨ᠂ ᠤᠷᠭ᠎ᠠ᠂ ᠪᠢᠴᠢᠮᠡᠯ᠂ ᠤᠷᠭ᠎ᠠ ︵ᠮᠣᠰᠺᠸᠠ︶᠂ ᠤᠷᠭ᠎ᠠ ᠨᠠᠷᠢᠨ',
              style: TextStyle(fontFamily: 'MongolianScript', fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
