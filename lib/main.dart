import 'package:apppurhepecha/screens/inicio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diccionario',
      theme: ThemeData(
        //Vladys sama
        primarySwatch: Colors.blueGrey,
      ),
      home: Inicio(),
    );
  }
}
