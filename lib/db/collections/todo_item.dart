import 'package:isar/isar.dart';

import 'category.dart';

part 'todo_item.g.dart';

@Collection()
class TodoItem {
  Id id = Isar.autoIncrement;
  final category = IsarLink<Category>();
  late String title;
  late String content;
  late DateTime createdAt;
  @Index()
  late DateTime updatedAt;
  late bool isDone = false;
}
