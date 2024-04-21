import 'package:core/constants/enums/common_enums.dart';
import 'package:core/core_widgets/core_date_picker.dart';
import 'package:core/core_widgets/core_drop_down.dart';
import 'package:core/core_widgets/core_text_field.dart';
import 'package:core/core_widgets/core_validator_button.dart';
import 'package:core/helpers/core_color_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../view_model/riverpod.dart';

class StudentAddCard extends ConsumerWidget {
  const StudentAddCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: ColorCode.colorList(context).borderColor!), color: ColorCode.colorList(context).whiteBlack, boxShadow: defaultBoxShadow()),
      width: 400,
      height: MediaQuery.of(context).size.height - 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: context.height() - 265,
            decoration: BoxDecoration(
              border: Border.all(color: ColorCode.colorList(context).borderColor!),
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                20.height,
                Row(
                  children: [
                    10.width,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          ref.watch(studentVM).studentModel.id == null ? 'Add Student' : 'Update Student',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: ColorCode.colorList(context).blackWhite,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                letterSpacing: .5,
                              ),
                        ),
                        3.height,
                        Text(
                          ref.watch(studentVM).studentModel.id == null ? 'Add Student Details' : 'Update Student Details',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: ColorCode.colorList(context).ashWhiteLabel,
                                fontSize: 12,
                              ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    if (ref.watch(studentVM).studentModel.id != null) ...[
                      InkWell(
                        onTap: () async {
                          ref.read(studentVM).delete(ref.watch(studentVM).studentModel.id ?? 0);
                          await Future.delayed(const Duration(seconds: 1));
                          ref.read(studentVM).vmStateModel = ref.read(studentVM).vmStateModel.copyWith(state: VmState.current);
                          ref.read(studentVM).clear();
                          ref.read(studentVM).refresh();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: ColorCode.colorList(context).redOpacityWhite!),
                          child: Icon(
                            Icons.delete,
                            size: 16,
                            color: ColorCode.colorList(context).primary,
                          ).center(),
                        ),
                      ),
                      10.width,
                    ],
                    InkWell(
                      onTap: () async {
                        ref.read(studentVM).clear();
                        ref.read(studentVM).refresh();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: ColorCode.colorList(context).redOpacityWhite!),
                        child: Icon(
                          ref.watch(studentVM).studentModel.id == null ? Icons.close : Icons.arrow_left,
                          size: 16,
                          color: ColorCode.colorList(context).primary,
                        ).center(),
                      ),
                    ),
                  ],
                ),
                15.height,
                CustomTextField(
                  width: double.infinity,
                  hintText: 'Student Name',
                  value: ref.watch(studentVM).studentModel.name,
                  onChanged: (val) {
                    ref.read(studentVM).studentModel = ref.read(studentVM).studentModel.copyWith(name: val);
                  },
                ),
                20.height,
                CustomTextField(
                  width: double.infinity,
                  hintText: 'Phone',
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  value: ref.watch(studentVM).studentModel.phone.toString() == 'null' ? '' : ref.watch(studentVM).studentModel.phone.toString(),
                  onChanged: (val) {
                    ref.read(studentVM).studentModel = ref.read(studentVM).studentModel.copyWith(phone: val.toInt());
                  },
                ),
                20.height,
                CustomTextField(
                  width: double.infinity,
                  hintText: 'Address',
                  value: ref.watch(studentVM).studentModel.address,
                  onChanged: (val) {
                    ref.read(studentVM).studentModel = ref.read(studentVM).studentModel.copyWith(address: val);
                  },
                ),
                20.height,
                CustomTextField(
                  width: double.infinity,
                  hintText: 'Email',
                  value: ref.watch(studentVM).studentModel.email,
                  onChanged: (val) {
                    ref.read(studentVM).studentModel = ref.read(studentVM).studentModel.copyWith(email: val);
                  },
                ),
                20.height,
                CustomDropDown(
                  width: 348,
                  onChanged: (val) {
                    ref.read(studentVM).studentModel = ref.read(studentVM).studentModel.copyWith(gender: val);
                  },
                  label: "Gender",
                  items: const ['Male', 'Female'],
                ),
                10.height,
                DatePicker(
                  label: 'Date of Birth',
                  width: double.infinity,
                  onDateChanged: (val) {
                    ref.read(studentVM).studentModel = ref.read(studentVM).studentModel.copyWith(dob: val);
                    ref.read(studentVM).refresh();
                  },
                  value: ref.watch(studentVM).studentModel.dob ?? DateTime.now(),
                ),
                10.height,
                DatePicker(
                  label: 'Duration',
                  isRangePicker: true,
                  width: double.infinity,
                  onDateChanged: (val) {
                    ref.read(studentVM).studentModel = ref.read(studentVM).studentModel.copyWith(duration: val);
                    ref.read(studentVM).refresh();
                  },
                  value: ref.watch(studentVM).studentModel.duration ?? DateTime.now(),
                ),
              ],
            ),
          ),
          ValidatorButton(
            text: ref.watch(studentVM).studentModel.id == null ? "Add Student" : "Update Student",
            state: ref.watch(studentVM).vmStateModel.state ?? VmState.current,
            onTap: () async {
              if (ref.watch(studentVM).studentModel.id == null) {
                ref.read(studentVM).save();
              } else {
                ref.read(studentVM).update(ref.watch(studentVM).studentModel.id ?? 0);
              }
              ref.read(studentVM).clear();
              await Future.delayed(const Duration(seconds: 1));
              ref.read(studentVM).vmStateModel = ref.read(studentVM).vmStateModel.copyWith(state: VmState.current);
              ref.read(studentVM).refresh();
            },
            successMessage: ref.watch(studentVM).vmStateModel.message ?? '',
            warningMessage: ref.watch(studentVM).vmStateModel.message ?? '',
            deleteMessage: ref.watch(studentVM).vmStateModel.message ?? '',
          ),
        ],
      ),
    );
  }
}
