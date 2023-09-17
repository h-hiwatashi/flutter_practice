import 'package:flutter/material.dart';
import 'package:flutter_practice/state/todo_item/todo_item_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoDetail extends ConsumerWidget {
  const TodoDetail({required this.item});
  final TodoItemSate item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Todo Detail!',
              ),
              TextField(
                decoration:
                    InputDecoration(border: InputBorder.none, hintText: 'タイトル'),
              ),
              TextField(
                decoration:
                    InputDecoration(border: InputBorder.none, hintText: '内容'),
              ),
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'サブタスク'),
              ),
              TextField(
                decoration:
                    InputDecoration(border: InputBorder.none, hintText: '場所'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
