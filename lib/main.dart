import 'dart:async';

import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

Future<void> main() async {
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: HomePage(),
      ),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Animal> birds = [];
  List<Animal> dogs = [];
  late Animal animal;

  @override
  void initState() {
    super.initState();
    _getJsonFromOnline();
  }

  void _getJsonFromOnline() async {
    final response = await get(Uri.parse(
        'https://raw.githubusercontent.com/suragch/furry_box_data/main/furry_data.json'));
    print(response.body);
    final jsonString = response.body;
    final jsonMap = jsonDecode(jsonString);
    birds = getAnimals('birds', jsonMap);
    dogs = getAnimals('dogs', jsonMap);

    final canary = birds.firstWhere((bird) => bird.name == 'canaries');
    animal = canary;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Birds(birdList: birds)));
            },
            child: Text('Show canary info'),
          ),
          if (birds.isNotEmpty) Text(birds.first.name), // or GridView
        ],
      ),
    );
  }

  List<Animal> getAnimals(String category, Map<String, dynamic> jsonMap) {
    final rawAnimalList = jsonMap[category] as List;
    final animals = <Animal>[];
    for (final item in rawAnimalList) {
      final animal = Animal(
        category,
        item['name'],
        item['description'],
        item['url'],
      );
      animals.add(animal);
    }
    return animals;
  }
}

class Animal {
  Animal(this.category, this.name, this.description, this.imageUrl);
  final String category;
  final String name;
  final String description;
  final String imageUrl;
}

class Birds extends StatefulWidget {
  Birds({Key? key, required this.birdList}) : super(key: key);
  final List<Animal> birdList;
  @override
  _BirdsState createState() => _BirdsState();
}

class _BirdsState extends State<Birds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.builder(
          itemCount: widget.birdList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            final bird = widget.birdList[index];
            return Column(
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.network(bird.imageUrl),
                ),
                Text(bird.name),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AnimalDetails(animal: bird)));
                }, child: Text('details')),

              ],
            );
          },
        ),
      ),
    );
  }
}

class AnimalDetails extends StatelessWidget {
  const AnimalDetails({Key? key, required this.animal}) : super(key: key);
  final Animal animal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(animal.imageUrl),
          Text(animal.name),
          Text(animal.description),
        ],
      ),
    );
  }
}
