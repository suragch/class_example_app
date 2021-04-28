import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String latitude = '';
  String longitude = '';

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
            Text('Latitude: $latitude'),
            Text('Longitude: $longitude'),
          ],
        ),
      ),
    );
  }

  _makeGetRequest() async {  // make GET request
    final url = Uri.parse('http://api.open-notify.org/iss-now.json');
    Response response = await get(url);  // sample info available in response
    int statusCode = response.statusCode;
    print('status code: $statusCode');
    Map<String, String> headers = response.headers;
    String contentType = headers['content-type'];
    String json = response.body;
    //print(json);
    Map<String, dynamic> jsonMap = jsonDecode(json);
    print(jsonMap);
    setState(() {
      latitude = jsonMap['iss_position']['latitude'];
      longitude = jsonMap['iss_position']['longitude'];
      print(latitude);
      print(longitude);
    });
  }
}
