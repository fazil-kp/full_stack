import 'package:core/core_widgets/core_custom_table.dart';
import 'package:core/core_widgets/core_main_widget.dart';
import 'package:core/core_widgets/core_text_field.dart';
import 'package:core/helpers/core_color_code.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../view_model/todo_riverpod.dart';

class EmployeeViewTable extends ConsumerWidget {
  const EmployeeViewTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MainWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomTextField(
            hintText: "Search",
            prefixIcon: Icon(Icons.search, color: ColorCode.colorList(context).blackWhite?.withOpacity(.5)),
            value: ref.read(studentVM).searchFilter,
            onChanged: (val) {
              ref.read(studentVM).searchFilter = val;
              ref.read(studentVM).search();
              ref.read(studentVM).refresh();
            },
          ),
          20.height,
          CustomDataTable(
            columns: const [
              DataColumn2(label: Text('id')),
              DataColumn2(label: Text('Name')),
            ],
            rows: ref.watch(employeeVM).categoryModelList.data.map((e) {
              return DataRow2(
                color: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
                  if (states.contains(WidgetState.selected)) return Theme.of(context).colorScheme.primary.withOpacity(0.08);
                  if (e.categoryId == ref.read(employeeVM).categoryModel.categoryId) return Theme.of(context).colorScheme.primary.withOpacity(0.08);
                  return null;
                }),
                specificRowHeight: 50,
                selected: e.categoryId == ref.read(employeeVM).categoryModel.categoryId,
                onTap: () {
                  ref.read(employeeVM).categoryModel = e;
                  ref.read(employeeVM).refresh();
                },
                cells: [
                  DataCell(Text(e.categoryId.toString())),
                  DataCell(Text(e.categoryName.toString())),
                ],
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
