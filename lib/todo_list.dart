import 'package:flutter/material.dart';
import 'package:flutter_practice/state/todo/todo_state.dart';
import 'package:flutter_practice/todo_detail.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key, required this.title});
  final String title;
  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final todoListData = [
    const Todo(id: 0, title: 'list1', isDone: false),
    const Todo(id: 0, title: 'list2', isDone: false),
    const Todo(id: 0, title: 'list3', isDone: false),
  ];

  late List<Widget> todoListWidgets =
      todoListData.map((e) => _createCard(e)).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: todoListWidgets,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _createCard(Todo item) {
    String title = item.title ?? '';
    return Center(
      child: Card(
        color: Colors.white54,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Card taped $title');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TodoDetail(item: item)),
            );
          },
          child: SizedBox(
            width: 300,
            height: 100,
            child: Column(
              children: [Text(title)],
            ),
          ),
        ),
      ),
    );
  }
}
