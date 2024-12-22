import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  //reference the Hive Box
  final _myBox = Hive.box('mybox');

  //method run on the first ever run
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Excercise", false],
    ];
  }

  //load data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //updateDatabase
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
