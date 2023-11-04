import 'package:flutter/material.dart';
import 'package:flutter_practice/state/todo_item/todo_item_state.dart';
import 'package:flutter_practice/state/todo_list/todo_list_notifier.dart';
import 'package:flutter_practice/state/todo_list/todo_list_state.dart';
import 'package:flutter_practice/view/design_pattern/mvc/mvc_view.dart';
import 'package:flutter_practice/view/todo_detail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

class DesignPatternCatalog extends ConsumerWidget {
  const DesignPatternCatalog({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('モデルカタログ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MVCView(),
                  ),
                );
              },
              child: const Text('MVC'),
            ),
            const SizedBox(height: 16),
            // ElevatedButton(
            //   onPressed: () =>
            //       ,
            //   child: const Text('MVVM'),
            // ),
            const SizedBox(height: 16),
            // ElevatedButton(
            //   onPressed: () => ,
            //   child: const Text('Riverpod'),
            // ),
          ],
        ),
      ),
    );
  }
}
