import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';

import 'app/routes/app_pages.dart';
import 'core/theme/app_theme.dart';

void main() async {
  /// -- @ ensure binding
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  /// -- @ init packages
  /// -- @ language, getstorage,
  // await EasyLocalization.;
  await EasyLocalization.ensureInitialized();
  await GetStorage.init();
  // FirebaseServices().init();

  /// - @ run first page from here

  runApp(
    GetMaterialApp(
      useInheritedMediaQuery: true,
      title: "Application",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
