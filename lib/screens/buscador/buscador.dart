import 'package:apppurhepecha/buscador/motor.dart';
import 'package:flutter/material.dart';

class BuscadorDelegate extends SearchDelegate {
  final motor m = new motor();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: () => this.query = '')
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () => this.close(context, null));
  }

  @override
  Widget buildResults(BuildContext context) {
    print(query);
    // return Text('build3');
    return Text(m.buscar(query));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListTile(
      title: Text('Sugerencias'),
    );
  }
}
