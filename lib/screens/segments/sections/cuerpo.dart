import 'package:flutter/material.dart';
import 'package:apppurhepecha/screens/segments/baseSection.dart';
import 'dart:math';

class Cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: 'Partes del cuerpo',
        container: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            color: Colors.black.withOpacity(0.3),
            child: LListWheelScrollView()));
  }
}

class LListWheelScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
      children: listItems(context),
      itemExtent: 100,
      useMagnifier: false,
      magnification: 4.25,
    );
  }
}

List<Widget> listItems(BuildContext context) {
  int i = 0;
  List<Widget> items = [];
  do {
    i += 1;
    items.add(Container(
      color: Color(0xFFFFFF).withOpacity(1.0),
      child: ListTile(
        leading: Text(
          "Hola",
          style: TextStyle(fontSize: 50),
        ),
        title: Text("Title "),
        subtitle: Text('Description here'),
      ),
    ));
  } while (i <= 100);
  return items;
}
