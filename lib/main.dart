import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp()); //запускаєм програму

class MyApp extends StatefulWidget { //створюєм клас (який має стан)
  @override
  _MyAppState createState() => _MyAppState(); //створюєм стан
}

class _MyAppState extends State<MyApp> {

  late Color _color;

  void generateColor(){  //функція зміни кольору
    setState(() {
      _color = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0); //рандомний колір
    });
  }

  @override
  void initState() {
    generateColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {  //створюєм віджет
    return GestureDetector( //стан кнопкий
      onTap: () => generateColor(), //при натисканні зміна кольору
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
