import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

// Widget holds all App's config and initialization
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

// Widget that represents a page in this case the home
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            color: Colors.white54,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Column(
                children: [
                  Text(
                    'Pode entrar!',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text('0', style: TextStyle(fontSize: 100))
                ],
              ),
            ),
          ),
          Row(),
        ],
      ),
    );
  }
}
