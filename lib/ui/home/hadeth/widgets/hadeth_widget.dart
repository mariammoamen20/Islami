import 'package:flutter/material.dart';
import 'package:islami/ui/my_theme.dart';
import 'package:provider/provider.dart';

import '../../../../providers/settings_provider.dart';

class HadethWidget extends StatelessWidget {
  String content ;
  HadethWidget(this.content);

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Container(
        decoration: BoxDecoration(
          color: settingsProvider.currentTheme == ThemeMode.dark ? MyTheme.darkBlue : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Text(
          content,
          style: TextStyle(
            color:settingsProvider.currentTheme == ThemeMode.dark ? MyTheme.yellowColor : Colors.black,
          ),
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
