import 'dart:async';

import 'package:flutter_practice/db/collections/category.dart';
import 'package:flutter_practice/db/collections/todo_item.dart';
import 'package:isar/isar.dart';

class TodoItemRepository {
  TodoItemRepository(this.isar) {
    isar.todoItems.watchLazy().listen((_) async {
      if (!isar.isOpen) {
        return;
      }
      if (_todoItemStreamController.isClosed) {
        return;
      }
      _todoItemStreamController.sink.add(await findTodoItems());
    });
  }

  final Isar isar;

  final _todoItemStreamController =
      StreamController<List<TodoItem>>.broadcast();
  Stream<List<TodoItem>> get todoItemStream => _todoItemStreamController.stream;

  void dispose() {
    _todoItemStreamController.close();
  }

  Future<List<Category>> findCategories() async {
    if (!isar.isOpen) {
      return [];
    }
    return isar.categorys.where().findAll();
  }

  Future<List<TodoItem>> findTodoItems() async {
    if (!isar.isOpen) {
      return [];
    }
    final todoItems =
        await isar.todoItems.where().sortByUpdatedAtDesc().findAll();
    for (final todoItem in todoItems) {
      await todoItem.category.load();
    }
    return todoItems;
  }

  Future<void> addTodoItem({
    required Category category,
    required String content,
    required bool isDone,
  }) {
    if (!isar.isOpen) {
      return Future<void>(() {});
    }

    final now = DateTime.now();
    final todoItem = TodoItem()
      ..category.value = category
      ..content = content
      ..createdAt = now
      ..updatedAt = now
      ..isDone = isDone;
    return isar.writeTxn(() async {
      await isar.todoItems.put(todoItem);
      await todoItem.category.save();
    });
  }

  Future<void> updateTodoItem({
    required TodoItem todoItem,
    required Category category,
    required String content,
    required bool isDone,
  }) {
    if (!isar.isOpen) {
      return Future<void>(() {});
    }

    final now = DateTime.now();
    todoItem
      ..category.value = category
      ..content = content
      ..updatedAt = now
      ..isDone = isDone;
    return isar.writeTxn(() async {
      await isar.todoItems.put(todoItem);
      await todoItem.category.save();
    });
  }

  Future<bool> deleteTodoItem(TodoItem todoItem) async {
    if (!isar.isOpen) {
      return false;
    }
    return isar.writeTxn(() async {
      return isar.todoItems.delete(todoItem.id);
    });
  }
}
