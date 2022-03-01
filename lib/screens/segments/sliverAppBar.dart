import 'package:flutter/material.dart';
import 'package:apppurhepecha/screens/segments/card/cards.dart';

import 'package:apppurhepecha/screens/segments/sections/animales.dart';
import 'package:apppurhepecha/screens/segments/sections/colores.dart';
import 'package:apppurhepecha/screens/segments/sections/cuerpo.dart';
import 'package:apppurhepecha/screens/segments/sections/numeros.dart';
import 'package:apppurhepecha/screens/segments/sections/objetos.dart';
import 'package:apppurhepecha/screens/segments/sections/saludos.dart';

class LSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Color(0xffA14B9B).withOpacity(0.8),
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
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
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
              page: Cuerpo(),
            ),
            Clasificacion(
              titulo: 'Colores',
              imagen: 'assets/ruedaColor.png',
              page: Colores(),
            ),
            Clasificacion(
              titulo: 'Nùmeros',
              imagen: 'assets/numeros.png',
              page: Numeros(),
            ),
            Clasificacion(
              titulo: 'Saludos',
              imagen: 'assets/manos.png',
              page: Saludos(),
            ),
            Clasificacion(
              titulo: 'Animales',
              imagen: 'assets/ganado.png',
              page: Animales(),
            ),
            Clasificacion(
              titulo: 'Objetos basicos',
              imagen: 'assets/limpieza.png',
              page: Objetos(),
            ),
          ])),
        ],
      ),
    );
  }
}
