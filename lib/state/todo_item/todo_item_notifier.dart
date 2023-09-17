import 'package:flutter_practice/state/todo_item/todo_item_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoItemNotifier extends StateNotifier<TodoItemSate> {
  TodoItemNotifier(this.ref) : super(const TodoItemSate());
  final Ref ref;

  // setTodoList(List<TodoItemSate> list) => state = state.copyWith(list: list);
}

final todoItemNotifier =
    StateNotifierProvider.autoDispose<TodoItemNotifier, TodoItemSate>(
        (ref) => TodoItemNotifier(ref));
