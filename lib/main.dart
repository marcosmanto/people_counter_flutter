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
  static const whiteColor = Color.fromARGB(127, 255, 255, 255);

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

  bool get isEmpty => count == 0;
  bool get isFull => count == 20;
  Color get cardTextColor => isFull ? Colors.white : Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
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
                  shadowColor: Colors.transparent,
                  color: isFull
                      ? const Color.fromARGB(170, 244, 67, 54)
                      : HomePage.whiteColor,
                  child: Container(
                    alignment: Alignment.center,
                    width: HomePage.maxSize,
                    height: HomePage.maxSize,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          isFull ? 'Lotado' : 'Pode entrar!',
                          style: TextStyle(fontSize: 30, color: cardTextColor),
                        ),
                        Text(count.toString(),
                            style:
                                TextStyle(fontSize: 100, color: cardTextColor))
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
                          shadowColor: Colors.transparent,
                          fixedSize: const Size(120, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        onPressed: isEmpty ? null : decrement,
                        child: const Text(
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
                          shadowColor: Colors.transparent,
                          fixedSize: const Size(120, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        onPressed: isFull ? null : increment,
                        child: const Text(
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
