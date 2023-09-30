import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_practice/db/collections/category.dart';
import 'package:flutter_practice/db/collections/todo_item.dart';
import 'package:flutter_practice/repository/todo_item/todo_item_repository.dart';
import 'package:flutter_practice/state/response/response_state.dart';
import 'package:flutter_practice/state/todo_item/todo_item_state.dart';
import 'package:flutter_practice/state/todo_list/todo_list_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart' as path;

class TodoListNotifier extends StateNotifier<ResponseState<TodoListState>> {
  TodoListNotifier(this.ref) : super(const ResponseState.initial()) {
    Future(() {
      init();
    });
  }

  final Ref ref;
  // final TodoItemRepository repository;
  // final Isar isar;
  Future<Isar> openIsar() async {
    final directory = await path.getApplicationDocumentsDirectory();
    final isar = await Isar.openSync(
      [
        TodoItemSchema,
        CategorySchema,
      ],
      directory: directory.path,
    );
    if (isar == null) {
      throw 'Could not open Isar instance.';
    }
    return isar;
  }

  Future<void> _initialLoad(Isar isar) async {
    try {
      final bytes = await rootBundle.load('assets/initial_data.json');
      final jsonStr = const Utf8Decoder().convert(bytes.buffer.asUint8List());
      final json = jsonDecode(jsonStr) as List;
      final now = DateTime.now();
      final todoItems = json.map((e) => TodoItem()
        ..title = e['title']
        ..content = e['content']
        ..createdAt = now
        ..updatedAt = now
        ..isDone = e['isDone']);
      isar.writeTxn(() async {
        await isar.todoItems.putAll((todoItems.toList()));
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  init() async {
    state = const ResponseState.loading();
    Isar isar = await openIsar();
    // final directory = await path.getApplicationDocumentsDirectory();
    // final isar = Isar.openSync(
    //   [
    //     TodoItemSchema,
    //     CategorySchema,
    //   ],
    //   directory: directory.path,
    // );
    // if (isar == null) {
    //   throw 'Could not open Isar instance.';
    // }
    await _initialLoad(isar);
    final repository = TodoItemRepository(isar);
    final todoItemsList = await repository.findTodoItems();
    final convertedValue = todoItemsList
        .map((e) => TodoItemSate(id: e.id, title: e.title, isDone: e.isDone))
        .toList();
    state =
        ResponseState.data(value: TodoListState(id: 1, list: convertedValue));
  }

  // setTodoList(List<TodoItemSate> list) => state = state.copyWith(list: list);
}

final todoListProvider = StateNotifierProvider.autoDispose<TodoListNotifier,
    ResponseState<TodoListState>>((ref) => TodoListNotifier(ref));
