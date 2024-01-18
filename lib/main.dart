import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bg changer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BgChanger(),
    );
  }
}

class BgChanger extends StatefulWidget {
  const BgChanger({super.key});

  @override
  State<BgChanger> createState() => _BgChangerState();
}

class _BgChangerState extends State<BgChanger> {
  List<Color> randomList = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.pink,
    Colors.purple,
    Colors.brown,
    Colors.amber,
    Colors.cyan,
    Colors.indigo,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.lime,
    Colors.teal,
    Colors.purpleAccent,
    Colors.deepPurple,
    Colors.indigoAccent,
    Colors.blueAccent,
    Colors.cyanAccent,
    Colors.greenAccent,
    Colors.lightBlueAccent,
    Colors.limeAccent,
    Colors.orangeAccent,
  ];
  late int index;
  Color colorrightnow = Colors.red; // Initialize with a default color

  void changecolor() {
    setState(() {
      index = Random().nextInt(randomList.length);
      colorrightnow = randomList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: colorrightnow,
      ),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(colorrightnow),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          overlayColor: MaterialStateProperty.all<Color>(Colors.white),
          shadowColor: MaterialStateProperty.all<Color>(Colors.white),
          elevation: MaterialStateProperty.all<double>(10.0),
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.all(10.0),
          ),
        ),
        onPressed: changecolor,
        child:
            const Text('change color', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
