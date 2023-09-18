import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/db/collections/category.dart';
import 'package:flutter_practice/db/collections/todo_item.dart';
import 'package:flutter_practice/repository/todo_item/todo_item_repository.dart';
import 'package:flutter_practice/view/todo_list.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart' as path;

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

Future<void> main() async {
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
  runApp(MyApp(isar: isar));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.isar});
  final Isar isar;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TodoList(title: 'Flutter Demo Home Page', isar: isar),
    );
  }
}
