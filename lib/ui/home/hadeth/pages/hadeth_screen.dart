import 'package:flutter/material.dart';
import 'package:islami/ui/home/hadeth/widgets/hadeth_name_widget.dart';
import 'package:islami/ui/my_theme.dart';
import 'package:provider/provider.dart';

import '../../../../providers/settings_provider.dart';

class HadethScreen extends StatefulWidget {
  static String routeName  = 'hadeth';
  HadethScreen({Key? key}) : super(key: key);

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<String> hadethName = [
    "الحديث الاول",
  "الحديث الثاني",
  "الحديث الثالث",
  "الحديث الرابع",
  "الحديث الخامس",
 " الحديث السادس",
  "الحديث السابع",
 " الحديث الثامن",
 " الحديث التاسع",
  "الحديث العاشر",
"  الحديث الحادي عشر",
  "الحديث الثاني عشر",
  "الحديث الثالث عشر",
  "الحديث الرايع عشر",
  "الحديث الخامس عشر",
  "الحديث السادس عشر",
 " الحديث السابع عشر",
  "الحديث الثامن عشر",
  "الحديث التاسع عشر",
 " الحديث العشرون",
 "الحديث الحادي وعشرون",
  "الحديث الثاني والعشرون",
"الحديث الثالث والعشرون",
  "الحديث الرابع والعشرون",
  "الحديث الخامس والعشرون",
  "الحد يث السادس والعشرون",
  "الحد يث السابع والعشرون",
  "الحد يث الثامن والعشرون",
 " الحد يث التاسع والعشرون",
  "الحديث الثلا ثــون",
  "الحديث الحادي والثلاثون",
  "الحديث الثاني والثلاثون",
  "الحديث الثالث والثلاثون",
  "الحديث الرابع والثلاثون",
  "الحديث الخامس والثلاثون",
  "الحديث السادس والثلاثون",
 " الحديث السابع والثلاثون",
  "الحديث الثامن والثلاثون",
 " الحديث الاربعون",
  "الحد يث الحادي والأربعون",
  "الحد يث الثاني والأربعـون",
 " الحد يث الثالث والأربعون",
  "الحديث الرابع والأربعون",
  "الـحديث الخامس والأربعون",
  "الحديث السادس والأربعون",
  "الحديث السابع والأربعون",
  "الـحديث الثامن والأربعون",
  "الحديث التاسع والأربعون",
  "الحديث الخمسون",
  ];

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    //readHadeathFile();
    return Column(
      children: [
        Image.asset('assets/images/hadeth_ba.png'),
        Container(
          height: 2,
          color:settingsProvider.currentTheme == ThemeMode.dark ? MyTheme.yellowColor:MyTheme.goldColor ,
        ),
        Text(
          'ألاحاديث',
          style: Theme.of(context).textTheme.headline5,
        ),
        Container(
          height: 2,
          color:settingsProvider.currentTheme == ThemeMode.dark ? MyTheme.yellowColor:MyTheme.goldColor ,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (_, index) {
             return HadethNameWidget(index,hadethName[index]);
            },
            itemCount: hadethName.length,
            separatorBuilder: (_, index) {
              return Container(
                height: 1,
                color:settingsProvider.currentTheme == ThemeMode.dark ? MyTheme.yellowColor:MyTheme.goldColor ,
                margin: const EdgeInsets.symmetric(horizontal: 30),
              );
            },
          ),
        ),
      ],
    );
  }

  /*void readHadeathFile() async {
    ///read hadeth file
    String hadeth = await rootBundle.loadString('assets/files/ahadeth.txt');

    ///split every hadeth from each aether
    List<String> allHadeath = hadeth.trim().split('#');
    List<Hadeath> allHadethFiles = [];

    for (int i = 0; i < allHadeath.length; i++) {
      ///split hadeth title from content
      List<String> hadethLines = allHadeath[i].trim().split('\n');

      ///hadeth title
      String title = hadethLines[0];

      ///after get title remove it to get content
      hadethLines.removeAt(0);

      ///rejoin the content
     String content = hadethLines.join('\n');
      Hadeath hadeath = Hadeath(title: title ,content: content);
      allHadethFiles.add(hadeath);
    }
    hadethList = allHadethFiles;
    setState(() {});
  }*/
}

