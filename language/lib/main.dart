// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'config/LacaleString.dart';
import 'screens/SettingsScreen.dart';
import 'screens/LanguageScreen.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:window_size/window_size.dart';

void initScreen() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowMinSize(const Size(1480, 320));
    setWindowMaxSize(const Size(1480, 320));
  }
}

void main() {
  initScreen();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocaleString(),
      locale: Locale('en', 'US'), // Default locale
      fallbackLocale: Locale('en', 'US'), // If invalid set EN is default
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/settings',
      getPages: [
        GetPage(
          name: '/language',
          page: () => LanguageScreen(),
        ),
        GetPage(
          name: '/settings',
          page: () => SettingsScreen(),
        ),
      ],
    );
  }
}
