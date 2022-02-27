import 'package:flutter/material.dart';

class Clasificacion extends StatelessWidget {
  final String titulo;
  final String imagen;
  const Clasificacion({Key key, this.titulo, this.imagen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Color(0xff24B34C),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 140.0,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    bottom: 10.0,
                    left: 10.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 180),
                      child:
                          Image(image: AssetImage(imagen), fit: BoxFit.contain),
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    left: 16.0,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        titulo,
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Abrir',
                    style: TextStyle(
                        color: Color(0xffF8EF07),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
