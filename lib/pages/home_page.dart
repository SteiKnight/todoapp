import 'package:flutter/material.dart';
import 'package:todoapp/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[600],
          title: Text("TO DO",
              style: TextStyle(
                color: Colors.white,
              )),
          centerTitle: true,
        ),
        body: ListView(children: [
          ToDoTile(),
        ]));
  }
}
