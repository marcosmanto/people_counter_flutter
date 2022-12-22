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
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const double maxSize = 265;
  static const whiteColor = Color.fromARGB(206, 255, 255, 255);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() => count--);
  }

  void increment() {
    setState(() => count++);
  }

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
                  color: Color.fromARGB(170, 181, 249, 249),
                  child: Container(
                    alignment: Alignment.center,
                    width: HomePage.maxSize,
                    height: HomePage.maxSize,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Pode entrar!',
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(count.toString(), style: TextStyle(fontSize: 100))
                      ],
                    ),
                  ),
                ),
                Container(
                  width: HomePage.maxSize,
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: HomePage.whiteColor,
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
                          backgroundColor: HomePage.whiteColor,
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
