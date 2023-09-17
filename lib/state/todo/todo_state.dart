// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_state.freezed.dart';

@freezed
abstract class Todo with _$Todo {
  const factory Todo({
    int? id,
    String? title,
    @Default(false) bool? isDone,
  }) = _Todo;
}
