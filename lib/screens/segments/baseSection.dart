import 'package:flutter/material.dart';
import 'package:apppurhepecha/screens/buscador/buscador.dart';

class BasePage extends StatelessWidget {
  final Container container;
  const BasePage({Key key, this.container}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9ADCFF),
      appBar: AppBar(
        title: Text('Buscar palabra'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
              iconSize: 35,
              icon: const Icon(
                Icons.search_sharp,
                color: Colors.black,
              ),
              tooltip: 'Buscar Palabras',
              onPressed: () {
                showSearch(context: context, delegate: BuscadorDelegate());
              },
            ),
          )
        ],
      ),
      body: container,
    );
  }
}
