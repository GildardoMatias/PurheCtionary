import 'package:flutter/material.dart';
import 'package:apppurhepecha/screens/segments/baseSection.dart';

class Objetos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Objetos comunes',
      container: Container(
          color: Colors.amber,
          alignment: Alignment.topCenter,
          child: ListWheelViewExample()),
    );
  }
}

class ListWheelViewExample extends StatefulWidget {
  const ListWheelViewExample({Key key}) : super(key: key);

  @override
  _ListWheelViewExampleState createState() => _ListWheelViewExampleState();
}

class _ListWheelViewExampleState extends State<ListWheelViewExample> {
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView.useDelegate(
      itemExtent: 75,
      childDelegate: ListWheelChildBuilderDelegate(
        builder: (BuildContext context, int index) {
          if (index < 0 || index > 9) {
            return null;
          }
          return ListTile(
            leading: Text(
              "$index",
              style: TextStyle(fontSize: 50),
            ),
            title: Text("Title $index"),
            subtitle: Text('Description here'),
          );
        },
      ),
    );
  }
}
