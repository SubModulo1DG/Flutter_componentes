import 'package:flutter/material.dart';
import 'package:fluttercomponentes/models/models.dart';
import 'package:fluttercomponentes/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutes.menuOption;
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter_componentes'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: Icon(menuOption[index].icon),
            title: Text(menuOption[index].name),
            onTap: () {
              Navigator.pushNamed(context, menuOption[index].route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOption.length,
        ));
  }
}
