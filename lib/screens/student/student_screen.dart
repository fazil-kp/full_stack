import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../view_model/riverpod.dart';
import 'elements/student_add_card.dart';
import 'elements/student_view_table.dart';

class StudentScreen extends ConsumerWidget {
  const StudentScreen({super.key});

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
              const StudentAddCard(),
              20.width,
              const StudentViewTable(),
            ],
          ),
          20.height,
          ElevatedButton(
            onPressed: () {
              context.goNamed("employee");
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
