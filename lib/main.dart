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
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// Widget that represents a page in this case the home
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const double maxSize = 265;
  static const whiteColor = Color.fromARGB(206, 255, 255, 255);

  void decrement() {}
  void increment() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/ice-cream-contrast.png'),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  color: whiteColor,
                  child: Container(
                    alignment: Alignment.center,
                    width: maxSize,
                    height: maxSize,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                Container(
                  width: maxSize,
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: whiteColor,
                          fixedSize: const Size(120, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        onPressed: decrement,
                        child: Text(
                          'Saiu',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: whiteColor,
                          fixedSize: const Size(120, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        onPressed: increment,
                        child: Text(
                          'Entrou',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
