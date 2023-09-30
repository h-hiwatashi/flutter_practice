import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/db/collections/category.dart';
import 'package:flutter_practice/db/collections/todo_item.dart';
import 'package:flutter_practice/repository/todo_item/todo_item_repository.dart';
import 'package:flutter_practice/view/todo_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
  // final directory = await path.getApplicationDocumentsDirectory();
  // final isar = await Isar.openSync(
  //   [
  //     TodoItemSchema,
  //     CategorySchema,
  //   ],
  //   directory: directory.path,
  // );
  // if (isar == null) {
  //   throw 'Could not open Isar instance.';
  // }
  // runApp(MyApp(isar: isar));
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: TodoList(title: 'Flutter Demo Home Page', isar: isar),
      home: TodoList(title: 'Flutter Demo Home Page'),
    );
  }
}
