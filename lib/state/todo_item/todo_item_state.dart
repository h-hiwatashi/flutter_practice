// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item_state.freezed.dart';

@freezed
abstract class TodoItemSate with _$TodoItemSate {
  const factory TodoItemSate({
    int? id,
    String? title,
    @Default(false) bool? isDone,
  }) = _TodoItemSate;
}
