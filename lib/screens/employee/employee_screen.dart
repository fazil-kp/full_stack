import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../view_model/todo_riverpod.dart';
import 'elements/employee_add_card.dart';
import 'elements/employee_view_table.dart';

class EmployeeScreen extends ConsumerWidget {
  const EmployeeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              const EmployeeAddCard(),
              20.width,
              const EmployeeViewTable(),
            ],
          ),
          20.height,
          ElevatedButton(
            onPressed: () {
              context.goNamed("test-two");
            },
            child: const Text("Go"),
          ).center(),
          20.height,
          ElevatedButton(
            onPressed: () {
              ref.watch(employeeVM).getCategories();
              ref.watch(employeeVM).refresh();
            },
            child: const Text("Api get check"),
          ).center()
        ],
      ),
    );
  }
}
