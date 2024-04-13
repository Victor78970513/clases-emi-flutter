import 'package:flutter/material.dart';
import 'package:mi_primera_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}


































































/*import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color miColor = Colors.indigo;
  double alto = 150;
  double ancho = 150;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ESTE ES MI TITULO"),
          backgroundColor: Colors.amber,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // miColor = listadecolores[Random().nextInt(4)];
                miColor =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
                // alto = Random().nextDouble();
                setState(() {});
              },
              // child: AnimatedContainer(
              //   duration: Duration(milliseconds: 350),
              //   height: Random().nextInt(850).toDouble(),
              //   width: Random().nextInt(850).toDouble(),
              //   color: miColor,
              // ),
              child: Image.network(
                  "https://c3.klipartz.com/pngpicture/964/935/sticker-png-shrek-character-thumbnail.png"),
            ),
          ],
        )),
      ),
    );
    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(),
    //     body: Text("MI PRIMERA APLICACION"),
    //   ),
    // );
  }
}*/
