import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'BaseScreen.dart';
import '../services/LanguageController.dart';

class SettingsScreen extends StatelessWidget {
  final languageController = Get.put(LanguageController());
  final List<String> listItems = [
    'Language',
    'Adjustment',
    'Time',
    'Heat',
    'Home Connect',
    'Display',
    'Sound',
    'Appliance Settings',
    'Customisation',
    'Factory Settings',
    'Info',
  ];
  @override
  Widget build(BuildContext context) {
    return BasePage(
      pageTitle: "Settings".tr,
      listItems: listItems,
      listView: ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              listItems[index].toString().tr,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/' + listItems[index].toLowerCase().replaceAll(' ', '_'),
              );
            },
          );
        },
      ),
    );
  }
}
