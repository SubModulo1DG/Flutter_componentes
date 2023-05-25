export 'package:fluttercomponentes/screens/home.dart';
export 'package:fluttercomponentes/screens/listview1_screen.dart';
export 'package:fluttercomponentes/screens/listview2_screen.dart';
export 'package:fluttercomponentes/screens/tabview_screen.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Ejemplo",
                icon: Icon(Icons.receipt_long),
              ),
              Tab(text: "Codigo", icon: Icon(Icons.code)),
            ],
          ),
          title: Text('TabBar y Tabview'),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Aqui se muestra el ejemplo"),
                  Text("deTabBar y TabView"),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/TabView.jpg'),
                  Text("Codigo"),
                  Text("Aqui se muestra el ejemplo"),
                  Text("deTabBar y TabView"),
                ],
              ),
            ),
            Center(
              child: TextButton(
                child: Text("Button"),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
