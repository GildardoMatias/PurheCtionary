import 'package:flutter/material.dart';

class Clasificacion extends StatelessWidget {
  const Clasificacion({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.cyan,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 150.0,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Image(
                      image: AssetImage('assets/bandera.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 16.0,
                    left: 16.0,
                    right: 16.0,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Card 4 (complex example)',
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(color: Colors.white),
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
                  child: const Text('SHARE'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('EXPLORE'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
