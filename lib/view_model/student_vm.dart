import 'package:core/api/api_helper.dart';
import 'package:core/constants/enums/common_enums.dart';
import 'package:core/helpers/core_helpers.dart';
import 'package:core/helpers/core_hive_db.dart';
import 'package:core/model/common_model.dart';
import 'package:core/model/student_model.dart';
import 'package:flutter/material.dart';

class StudentVM extends ChangeNotifier {
  StudentModel studentModel = const StudentModel();
  StudentModelList studentModelList = const StudentModelList();
  bool isLightTheme = true;
  String? searchFilter;
  VmStateModel vmStateModel = const VmStateModel();

  StudentVM() {
    getStudent();
  }

  Future<void> save() async {
    if (studentModel.name == null || studentModel.name?.isEmpty == true) {
      vmStateModel = vmStateModel.copyWith(state: VmState.error, message: "Please Fill Fields !");
    } else {
      studentModel = studentModel.copyWith(id: studentModelList.data.length + 1);
      studentModelList = studentModelList.copyWith(data: [...studentModelList.data, studentModel]);
      await MyDB.toDb(Const.hiveBox, "data", studentModelList.toJson());
      vmStateModel = vmStateModel.copyWith(state: VmState.success, message: "Added Successfully");
      await getStudent();
      printx(studentModelList.toJson());
    }
    notifyListeners();
  }

  Future<void> update(int id) async {
    if (studentModel.name == null || studentModel.name!.isEmpty) {
      vmStateModel = vmStateModel.copyWith(state: VmState.error, message: "Please Fill Fields !");
      notifyListeners();
      return;
    }
    studentModelList = studentModelList.copyWith(
        data: studentModelList.data.map((e) {
      if (e.id == id) {
        return studentModel;
      } else {
        return e;
      }
    }).toList());
    await MyDB.toDb(Const.hiveBox, "data", studentModelList.toJson());
    vmStateModel = vmStateModel.copyWith(state: VmState.success, message: "Updated Successfully");
    notifyListeners();
  }

  Future<void> getStudent() async {
    var data = await MyDB.fromDb(Const.hiveBox, "data");
    if (data != null) {
      studentModelList = StudentModelList.fromJson(data);
    }
    notifyListeners();
  }

  delete(int id) async {
    studentModelList = studentModelList.copyWith(data: studentModelList.data.where((element) => element.id != id).toList());
    await MyDB.toDb(Const.hiveBox, "data", studentModelList.toJson());
    vmStateModel = vmStateModel.copyWith(state: VmState.delete, message: "🗑️ Deleted Successfully");
    notifyListeners();
  }

  void search() async {
    var data = await MyDB.fromDb(Const.hiveBox, "data");
    if (data != null) {
      studentModelList = StudentModelList.fromJson(data);
      studentModelList = studentModelList.copyWith(
        data: studentModelList.data.where((element) {
          bool matchesTitle = element.name?.toLowerCase().contains(searchFilter ?? '') ?? false;
          bool matchesId = element.id?.toString().contains(searchFilter ?? '') ?? false;
          bool matchesDescription = element.phone?.toString().toLowerCase().contains(searchFilter ?? '') ?? false;

          return matchesTitle || matchesId || matchesDescription;
        }).toList(),
      );
    }
    notifyListeners();
  }

  void clear() {
    studentModel = const StudentModel();
    notifyListeners();
  }

  void refresh() {
    notifyListeners();
  }
}
