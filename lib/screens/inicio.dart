import 'package:apppurhepecha/buscador/buscador.dart';
import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diccionario Purhépecha'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Púlsa para buscar una palabra'),
            MaterialButton(
                child: Text(
                  'Buscar',
                  style: TextStyle(color: Colors.white),
                ),
                shape: StadiumBorder(),
                elevation: 1,
                splashColor: Colors.transparent,
                color: Colors.indigo,
                onPressed: () {
                  showSearch(context: context, delegate: BuscadorDelegate());
                })
          ],
        ),
      ),
    );
  }
}
