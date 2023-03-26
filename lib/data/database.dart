import 'package:hive/hive.dart';

class ToDoDataBase {
  List todoList = [];
  final _myBox = Hive.box('myBox');

  void createDefaultTasks() {
    todoList = [
      ["this is completed task", true],
      ["not completed", false],
      ["you can swipe left to delete", false],
    ];
  }

  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  void updateData() {
    _myBox.put("TODOLIST", todoList);
  }
}
