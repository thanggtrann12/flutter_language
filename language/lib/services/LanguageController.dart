// ignore_for_file: prefer_const_constructors

import 'dart:ui' show Locale;
import 'package:get/get.dart';

class LanguageController extends GetxController {
  final Rx<Locale> _locale = Locale('en', 'US').obs;

  Locale get locale => _locale.value;

  void changeLanguage(String languageCode, String countryCode) {
    _locale.value = Locale(languageCode, countryCode);
    Get.updateLocale(_locale.value);
  }
}
