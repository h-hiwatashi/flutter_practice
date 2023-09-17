import 'package:flutter_practice/state/todo_item/todo_item_state.dart';
import 'package:flutter_practice/state/todo_list/todo_list_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoListNotifier extends StateNotifier<TodoListState> {
  TodoListNotifier(this.ref) : super(const TodoListState());
  final Ref ref;

  setTodoList(List<TodoItemSate> list) => state = state.copyWith(list: list);
}

final todoListNotifier =
    StateNotifierProvider.autoDispose<TodoListNotifier, TodoListState>(
        (ref) => TodoListNotifier(ref));
