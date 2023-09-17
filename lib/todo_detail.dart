import 'package:flutter/material.dart';
import 'package:flutter_practice/state/todo/todo_state.dart';

class TodoDetail extends StatefulWidget {
  const TodoDetail({super.key, required this.item});
  final Todo item;
  @override
  State<TodoDetail> createState() => _TodoDetailState();
}

class _TodoDetailState extends State<TodoDetail> {
  late Todo item = widget.item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Todo Detail!',
            ),
            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Enter a title'),
            ),
          ],
        ),
      ),
    );
  }
}
