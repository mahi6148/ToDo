import '../widgets/todo_item.dart';

class Todo {
  String? id;
  String? todoText;
  late bool isdone;
  Todo({this.isdone = false, required this.id, required this.todoText});
  static List<Todo> todoList() {
    return [
      Todo(id: ' 01 ', todoText: ' Morning Excercise ', isdone: true),
      Todo(id: ' 82 ', todoText: ' Buy Groceries ', isdone: true),
      Todo(id: ' 03 ', todoText: ' Check Emails '),
      Todo(id: ' 04 ', todoText: ' Team Meeting '),
      Todo(id: ' 05 ', todoText: ' Work on mobile apps for 2 hour '),
      Todo(id: ' 06 ', todoText: ' Dinner with Jenny '),
    ];
  }
}
