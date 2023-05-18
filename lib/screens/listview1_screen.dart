import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  var games = ["pow", "fornite", "pacman", "mortal kombat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List view Tipo 1'),
        ),
        body: ListView(
          children: [
            ...games
                .map((games) => ListTile(
                      title: Text(games),
                      trailing:
                          Icon(Icons.arrow_forward_ios, color: Colors.purple),
                      onTap: () {
                        var seleccion = games;
                        print(seleccion);
                      },
                    ))
                .toList(),
          ],
          //scrollDirection: Axis.horizontal,
        ));
  }
}
