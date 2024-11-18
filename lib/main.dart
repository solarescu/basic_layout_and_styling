import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //     textTheme: const TextTheme(
    //       displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    //       titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    //       bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    //     )
    //   ),
    //   home: const TutorialWidget(),
    // );

    return const MaterialApp(
      home: AssignmentWidget(),
    );
  }
}

class TutorialWidget extends StatelessWidget {
  const TutorialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Layout and Styling Example'),
      ),
      body: Column(
        children: [
          const Row(
            children: [
              Expanded(child: Text('Hello')),
              Expanded(child: Text('Flutter')),
              Expanded(child: Text('University')),
            ],
          ),
          const Row(
            children: [
              Icon(Icons.star, size: 50),
              Icon(Icons.star, size: 50),
              Icon(Icons.star, size: 50),
            ],
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Hello, Flutter University!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}

class AssignmentWidget extends StatelessWidget {
  const AssignmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Layout and Styling Assignment'),
      ),
      body: GridView.count(
        primary: false, // When set to false, the GridView will not be the primary scroll view, meaning that the GridView will not be scrolled when the user scrolls the screen.
        crossAxisCount: 2,
        children: const <Widget>[
          ColorfulStack(),
          ColorfulStack(),
          ColorfulStack(),
          ColorfulStack(),
        ],
      )
    );
  }
}

class ColorfulStack extends StatelessWidget {
  const ColorfulStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.black,
              width: 4,
            ),
          ),
          padding: const EdgeInsets.all(16),
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.green,
          width: 80,
          height: 80,
        ),
        Container(
          color: Colors.blue,
          width: 60,
          height: 60,
        ),
      ],
    );
  }
}