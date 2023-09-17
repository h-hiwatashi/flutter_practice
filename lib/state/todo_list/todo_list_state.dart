// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_practice/state/todo_item/todo_item_state.dart';

part 'todo_list_state.freezed.dart';

@freezed
abstract class TodoListState with _$TodoListState {
  const factory TodoListState({
    int? id,
    List<TodoItemSate>? list,
  }) = _TodoListState;
}
