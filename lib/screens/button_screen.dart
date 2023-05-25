export 'package:fluttercomponentes/screens/home.dart';
export 'package:fluttercomponentes/screens/listview1_screen.dart';
export 'package:fluttercomponentes/screens/listview2_screen.dart';
export 'package:fluttercomponentes/screens/tabview_screen.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    TextButton(
                      child: Text("Button"),
                      onPressed: () {},
                    ),
                    OutlinedButton(
                      child: Text("Button"),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      child: Text("Button"),
                      onPressed: () {},
                    ),
                    FloatingActionButton(
                      child: Icon(Icons.save),
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                      onPressed: () {
                        setState(() {});
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.play_arrow),
                      onPressed: () {},
                    ),
                    PopupMenuButton(
                      icon: Icon(Icons.more_vert),
                      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                        const PopupMenuItem(
                          child: ListTile(
                            leading: Icon(Icons.add),
                            title: Text('Item 1'),
                          ),
                        ),
                        const PopupMenuItem(
                          child: ListTile(
                            leading: Icon(Icons.anchor),
                            title: Text('Item 2'),
                          ),
                        ),
                        const PopupMenuItem(
                          child: ListTile(
                            leading: Icon(Icons.article),
                            title: Text('Item 3'),
                          ),
                        ),
                        const PopupMenuDivider(),
                        const PopupMenuItem(child: Text('Item A')),
                        const PopupMenuItem(child: Text('Item B')),
                      ],
                    ),
                  ]),
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
          ],
        ),
      ),
    );
  }
}
