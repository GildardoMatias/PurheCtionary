import 'package:flutter/material.dart';
import 'package:apppurhepecha/buscador/buscador.dart';
import 'package:apppurhepecha/segments/clasificaciones.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffD8E8F6),
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
          padding: EdgeInsets.all(10.0),
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
            backgroundColor: Color(0xffA14B9B),
            pinned: true,
            expandedHeight: 180.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage('assets/bandera.jpg'),
                fit: BoxFit.cover,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Vocabulario',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Clasificacion(
              titulo: 'Partes del cuerpo',
              imagen: 'assets/cuerpo.png',
            ),
            Clasificacion(
              titulo: 'Colores',
              imagen: 'assets/ruedaColor.png',
            ),
            Clasificacion(
              titulo: 'Nùmeros',
              imagen: 'assets/numeros.png',
            ),
            Clasificacion(
              titulo: 'Saludos',
              imagen: 'assets/saludo.png',
            ),
            Clasificacion(
              titulo: 'Animales',
              imagen: 'assets/ganado.png',
            ),
            Clasificacion(
              titulo: 'Objetos basicos',
              imagen: 'assets/escoba.png',
            ),
          ])),
        ],
      ),
    );
  }
}
