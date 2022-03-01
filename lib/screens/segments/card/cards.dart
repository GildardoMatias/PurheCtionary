import 'package:flutter/material.dart';

class Clasificacion extends StatelessWidget {
  final String titulo;
  final String imagen;
  final Widget page;
  const Clasificacion({Key key, this.titulo, this.imagen, this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.white.withOpacity(0),
        child: new InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          child: Container(
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
                          child: Image(
                              image: AssetImage(imagen), fit: BoxFit.contain),
                        ),
                      ),
                      Positioned(
                        bottom: 40.0,
                        left: 16.0,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Boton Funcionando Xd

// class BotonAbrir extends StatelessWidget {
//   final Widget pages;
//   const BotonAbrir({Key key, this.pages}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ButtonBar(
//       alignment: MainAxisAlignment.end,
//       children: <Widget>[
//         TextButton(
//           style: TextButton.styleFrom(
//               backgroundColor: Color(0xff9ADCFF),
//               shape: StadiumBorder(),
//               elevation: 5),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => pages),
//             );
//           },
//           child: const Text(
//             'Abrir',
//             style: TextStyle(
//                 color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//         ),
//       ],
//     );
//   }
// }
