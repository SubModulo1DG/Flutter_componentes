import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  //seter las vareables del menu
  //GET
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOption(
      {
      //obteninedo el valor de cada varible
      //SET
      required this.route,
      required this.icon,
      required this.name,
      required this.screen});
}
