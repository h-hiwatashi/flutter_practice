import 'package:flutter_practice/repository/todo_item/todo_item_repository.dart';
import 'package:flutter_practice/state/todo_item/todo_item_state.dart';
import 'package:flutter_practice/state/todo_list/todo_list_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

class TodoListNotifier extends StateNotifier<TodoListState> {
  TodoListNotifier(this.ref) : super(const TodoListState());
  final Ref ref;
  // final TodoItemRepository repository;
  // final Isar isar;

  setTodoList(List<TodoItemSate> list) => state = state.copyWith(list: list);

  // final repo = TodoItemRepository(isar);
  // getTodo() => state = state.copyWith(list: );
}

final todoListNotifier =
    StateNotifierProvider.autoDispose<TodoListNotifier, TodoListState>(
        (ref) => TodoListNotifier(ref));
