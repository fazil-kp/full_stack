import 'package:flutter/material.dart';
import '../helpers/key_board_short_cuts.dart';
import '../screens/student/student_screen.dart';
import 'app_bar.dart';

class CustomScaffold extends StatelessWidget {
  final Widget? childWidget;
  final String? enums;
  final bool? hideScaffold;
  const CustomScaffold({super.key, this.childWidget, this.enums, this.hideScaffold = false});

  @override
  Widget build(BuildContext context) {
    return hideScaffold == false
        ? KeyBoardShortCuts(
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Column(
                children: [
                  CustomAppBar(enums: enums, childWidget: childWidget),
                  Expanded(child: childWidget ?? const StudentScreen()),
                ],
              ),
            ),
          )
        : Scaffold(body: childWidget);
  }
}
