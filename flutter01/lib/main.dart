import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
  ));
}

/* 
void main() {
  runApp(
    MaterialApp(
      home: Homepage(),
    )
  )
};
 */

/* 
class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Meu Primeiro App'),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                TextButton(
                  child: Text('Clique no botão abaixo'),
                  onPressed: () {},
                )
              ],
            ),
          )),
    );
  }
} */

/* class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu App'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text('NOME'),
                ),
                Expanded(
                  child: Text('SOBRENOME'),
                ),
                Expanded(
                  child: Text('IDADE'),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text('Augusto'),
                ),
                Expanded(
                  child: Text('Bernardo de Oliveira'),
                ),
                Expanded(
                  child: Text('19'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
 */
