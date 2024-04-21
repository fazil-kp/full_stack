import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'employee_vm.dart';
import 'student_vm.dart';

final studentVM = ChangeNotifierProvider<StudentVM>((ref) => StudentVM());
final employeeVM = ChangeNotifierProvider<EmployeeVm>((ref) => EmployeeVm());
