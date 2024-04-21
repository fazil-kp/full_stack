import 'dart:io';
import 'dart:ui';
import 'package:core/constants/config/core_theme.dart';
import 'package:core/helpers/core_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'routes/project_routes.dart';
import 'view_model/riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter(Const.hiveBox);
  HttpOverrides.global = MyHttpOverrides();
  runApp(const ProviderScope(child: FullStack()));
}

class FullStack extends ConsumerWidget {
  const FullStack({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: coreRoute,
      title: Const.appName,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
        },
      ),
      themeMode: ref.watch(studentVM).isLightTheme ? ThemeMode.light : ThemeMode.dark,
      theme: AppTheme.getThemeData(ThemeMode.light),
      darkTheme: AppTheme.getThemeData(ThemeMode.dark),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}
