// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/LanguageController.dart';
import 'BaseScreen.dart';

class LanguageScreen extends StatelessWidget {
  final languageController = Get.put(LanguageController());

  final List<String> listItems = [
    'English',
    'Spanish',
    'French',
    'German',
    'Italian',
    'Japanese',
    'Chinese',
    'Russian',
    'Portuguese',
    'VietNamese',
  ];

  @override
  Widget build(BuildContext context) {
    return BasePage(
      pageTitle: "Language".tr,
      listItems: listItems,
      listView: ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              listItems[index].toString().tr,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              switch (listItems[index].toString()) {
                case 'English':
                  languageController.changeLanguage('en', 'US');
                  break;
                case 'Spanish':
                  languageController.changeLanguage('es', 'ES');
                  break;
                case 'French':
                  languageController.changeLanguage('fr', 'FR');
                  break;
                case 'German':
                  languageController.changeLanguage('de', 'DE');
                  break;
                case 'Italian':
                  languageController.changeLanguage('it', 'IT');
                  break;
                case 'Japanese':
                  languageController.changeLanguage('ja', 'JP');
                  break;
                case 'Chinese':
                  languageController.changeLanguage('zh', 'CN');
                  break;
                case 'Russian':
                  languageController.changeLanguage('ru', 'RU');
                  break;
                case 'Portuguese':
                  languageController.changeLanguage('pt', 'PT');
                  break;
                case 'VietNamese':
                  languageController.changeLanguage('vi', 'VI');
                  break;
                default:
                  languageController.changeLanguage('en', 'US');
                  break; // Default to English
              }
            },
          );
        },
      ),
    );
  }
}
