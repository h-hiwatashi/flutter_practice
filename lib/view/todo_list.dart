import 'package:flutter/material.dart';
import 'package:flutter_practice/state/todo_item/todo_item_state.dart';
import 'package:flutter_practice/state/todo_list/todo_list_notifier.dart';
import 'package:flutter_practice/state/todo_list/todo_list_state.dart';
import 'package:flutter_practice/view/todo_detail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

class TodoList extends ConsumerWidget {
  TodoList({Key? key, required this.title}) : super(key: key);
  final String title;
  // final Isar isar;

  // final todoListData = [
  //   const TodoItemSate(id: 0, title: 'list1', isDone: false),
  //   const TodoItemSate(id: 0, title: 'list2', isDone: false),
  //   const TodoItemSate(id: 0, title: 'list3', isDone: false),
  // ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final todoListNotifier = ref.watch(todoListProvider.notifier);

    final TodoListState todoListState = ref
        .watch(todoListProvider)
        .maybeWhen(data: (value) => value, orElse: () => const TodoListState());
    final todoListData = todoListState.list ?? [];

    late List<Widget> todoListWidgets =
        todoListData.map((e) => _createCard(context, e)).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: todoListWidgets,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _createCard(BuildContext context, TodoItemSate item) {
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
