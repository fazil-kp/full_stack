import 'package:core/constants/enums/date_time_enums.dart';
import 'package:core/core_widgets/core_custom_table.dart';
import 'package:core/core_widgets/core_main_widget.dart';
import 'package:core/core_widgets/core_text_field.dart';
import 'package:core/helpers/core_color_code.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../view_model/todo_riverpod.dart';

class StudentViewTable extends ConsumerWidget {
  const StudentViewTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MainWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomTextField(
            hintText: "Search",
            prefixIcon: Icon(Icons.search,
                color:
                    ColorCode.colorList(context).blackWhite?.withOpacity(.5)),
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
              DataColumn2(label: Text('Phone')),
              DataColumn2(label: Text('Address')),
              DataColumn2(label: Text('Email')),
              DataColumn2(label: Text('Gender')),
              DataColumn2(label: Text('Date of Birth')),
              DataColumn2(label: Text('Date of Joining')),
            ],
            rows: [
              ...ref.watch(studentVM).studentModelList.data.map(
                (e) {
                  return DataRow2(
                    color: WidgetStateProperty.resolveWith<Color?>(
                        (Set<WidgetState> states) {
                      if (states.contains(WidgetState.selected)) {
                        return Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.08);
                      }
                      if (e.id == ref.read(studentVM).studentModel.id) {
                        return Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.08);
                      }
                      return null;
                    }),
                    specificRowHeight: 50,
                    selected: e.id == ref.read(studentVM).studentModel.id,
                    onTap: () {
                      ref.read(studentVM).studentModel = e;
                      ref.read(studentVM).refresh();
                    },
                    cells: [
                      DataCell(Text(e.id.toString())),
                      DataCell(Text(e.name ?? '')),
                      DataCell(Text(e.phone == null ? '' : e.phone.toString())),
                      DataCell(Text(e.address ?? '')),
                      DataCell(Text(e.email ?? '')),
                      DataCell(Text(e.gender ?? '')),
                      DataCell(Text(e.dob.parseString(DateType.dmy))),
                      DataCell(Text(e.duration?.parseList(DateType.dmy) ?? '')),
                    ],
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
