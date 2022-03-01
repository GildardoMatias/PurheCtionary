import 'package:flutter/material.dart';
import 'package:apppurhepecha/screens/buscador/buscador.dart';
import 'package:apppurhepecha/screens/segments/sliverAppBar.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff9ADCFF),
        appBar: AppBar(
          title: Text('Diccionario Purhépecha'),
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
        body: Container(
          padding: EdgeInsets.all(10.0),
          alignment: Alignment.center,
          child: LSliverAppBar(),
        ));
  }
}
