import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/settings_provider.dart';

class VersesWidget extends StatelessWidget {
  String content ;
  int index ;
  VersesWidget(this.index,this.content);

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6),
        alignment: Alignment.center,
        child: Text(
          '$content   (${index+1})',
          style:TextStyle(
            color: settingsProvider.currentTheme == ThemeMode.dark ? const Color(0xffFACC1D) : Colors.black,
          ),
         textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,


        ),
      ),
    );
  }
}
