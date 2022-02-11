import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    //titleSection Widget
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    "Oeschinen Lake Campground",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
                Text(
                  "Kandersteg, Switzerland",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                  ),
              ],
            ),
          ),
          Icon(
              Icons.star,
              color: Colors.red.shade600,
            ),
          Text("41"),
        ],
      )
    );

    //buttonSection Widget
    Column _buildButtonColumn(Color color, IconData icon, String label){
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
            ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                color: color,
                fontSize: 12,
              ),
              ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
        padding: EdgeInsets.only(top: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButtonColumn(Colors.blue, Icons.call, "CALL"),
            _buildButtonColumn(Colors.blue, Icons.near_me, "ROUTE"),
            _buildButtonColumn(Colors.blue, Icons.share, "SHARE"),
          ],
        ),
    );

    //textSection
    Widget textSection = Container(
      padding: EdgeInsets.all(32),
      child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
    );

    Widget imageSection = Container(
      child: Image.asset(
        'images/lake.jpg',
        width: 600,
        height: 240,
        fit: BoxFit.cover,
      ),
    );
    

    return MaterialApp(
      title: "Welcome to Flutter",
      // title: "Flutter Demo",
      home: Scaffold(
        appBar: AppBar(
          // title: const Text("WelCome to fLutter"),
          title: const Text("fluTtEr laYOut"),
        ),
        body: Column(
          children: [
            imageSection,
            titleSection,
            textSection,
            buttonSection,
          ],
        ),
      ),
    );
  }
}