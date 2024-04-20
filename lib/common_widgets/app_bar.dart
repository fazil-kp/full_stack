import 'package:core/helpers/core_color_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';

import '../view_model/todo_riverpod.dart';

class CustomAppBar extends ConsumerWidget {
  final Widget? childWidget;
  final String? enums;
  const CustomAppBar({super.key, this.childWidget, this.enums});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Container(
        height: 60.0,
        color: whiteColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Todo App", style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: blackColor, fontSize: 20)),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: ColorCode.colorList(context).borderColor!),
                  borderRadius: BorderRadius.circular(50),
                  color: ColorCode.colorList(context).cardColor!,
                ),
                padding: const EdgeInsets.all(4),
                child: Icon(
                  ref.watch(studentVM).isLightTheme ? Icons.light_mode : Icons.dark_mode,
                  color: ref.watch(studentVM).isLightTheme ? blackColor : whiteColor,
                  size: 20,
                ).onTap(() {
                  ref.watch(studentVM).isLightTheme = !ref.watch(studentVM).isLightTheme;
                  ref.watch(studentVM).refresh();
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
