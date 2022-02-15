import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  late Color _color;

  void generateColor(){
    setState(() {
      _color = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
    });
  }

  @override
  void initState() {
    generateColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => generateColor(),
      child: Container(
        alignment: Alignment.center,
        color: _color,
        child: const Text(
          "Hello Solid",
          style: TextStyle(fontSize: 50, color: Colors.black),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
