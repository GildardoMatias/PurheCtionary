import 'package:flutter/material.dart';
import 'package:apppurhepecha/buscador/buscador.dart';
import 'package:apppurhepecha/segments/clasificaciones.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Diccionario Purhépecha'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: IconButton(
                iconSize: 35,
                icon: const Icon(
                  Icons.search_sharp,
                  color: Colors.white,
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
          decoration: BoxDecoration(color: Colors.red),
          padding: EdgeInsets.all(10.0),
          height: 700,
          alignment: Alignment.center,
          child: LSliverAppBar(),
        ));
  }
}

class LSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.amber,
            pinned: true,
            expandedHeight: 180.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage('assets/bandera.jpg'),
                fit: BoxFit.cover,
              ),
              title: Text(
                'Vocabulario',
                style: TextStyle(
                    color: Colors.black, backgroundColor: Colors.white70),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Clasificacion(),
          ])),
        ],
      ),
    );
  }
}
