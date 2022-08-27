import 'package:flutter/material.dart';
import 'package:islami/ui/home/quran/pages/sura_details.dart';
import 'package:provider/provider.dart';

import '../../../../providers/settings_provider.dart';

class SuraNameWidget extends StatelessWidget {
  String title ;
  int index ;
  SuraNameWidget(this.index,{required this.title});

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetails.routeName,arguments: SuraDetialsArgs(index, title));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6),
        alignment: Alignment.center,
        child: Text(
          title,
          style:settingsProvider.currentTheme == ThemeMode.dark ?  Theme.of(context).textTheme.headline6 :  Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
