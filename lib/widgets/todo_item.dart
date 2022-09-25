import 'package:flutter/material.dart';
import 'package:todo_list_app/colors.dart';
import '../model/todo.dart';

class todo_item extends StatelessWidget {
  final Todo todo;
  final onTodoChanged;
  final onDeleteItem;
  const todo_item(
      {Key? key,
      required this.todo,
      required this.onTodoChanged,
      required this.onDeleteItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: ListTile(
        onTap: () {
          onTodoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        textColor: Colors.white,
        leading: Icon(
          todo.isdone ? Icons.check_box : Icons.check_box_outline_blank,
          color: ColortdBlue,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: ColortdBlack,
            decoration: todo.isdone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          margin: EdgeInsets.symmetric(vertical: 12),
          padding: EdgeInsets.all(0),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: ColortdRed,
          ),
          child: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              onDeleteItem(todo.id);
            },
            color: Colors.white,
            iconSize: 20,
          ),
        ),
      ),
    );
  }
}
