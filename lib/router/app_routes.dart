import 'package:flutter/material.dart';
import 'package:fluttercomponentes/models/models.dart';
import 'package:fluttercomponentes/screens/screens.dart';
import 'package:fluttercomponentes/screens/tabview_screen.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final menuOption = <MenuOption>[
    MenuOption(
        icon: Icons.remove,
        name: "Listview1 Tipo 1",
        route: "Listview1",
        screen: Listview1Screen()),
    MenuOption(
        icon: Icons.remove,
        name: "Listview2 Tipo 2",
        route: "Listview2",
        screen: Listview2Screen()),
    MenuOption(
        icon: Icons.remove,
        name: "Listview2 Tipo 2",
        route: "tabview",
        screen: const TabScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    //Creamos lista Map para guardar las rutas actuales del proyecto
    //asignamos la rita ahome
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    //Ciclo para recorrer todas las pantallas
    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}
//Nos permite obtener todas las pantallas y todo eso de las rutas
