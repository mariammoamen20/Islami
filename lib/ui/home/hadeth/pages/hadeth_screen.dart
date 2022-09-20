import 'package:flutter/material.dart';
import 'package:islami/ui/home/hadeth/widgets/hadeth_name_widget.dart';
import 'package:islami/ui/my_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../providers/settings_provider.dart';

class HadethScreen extends StatefulWidget {
  static String routeName  = 'hadeth';
  HadethScreen({Key? key}) : super(key: key);

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {


  @override
  Widget build(BuildContext context) {
    List<String> hadethName = [
      "${AppLocalizations.of(context)?.hadith_1}",
      "${AppLocalizations.of(context)?.hadith_2}",
      "${AppLocalizations.of(context)?.hadith_3}",
      "${AppLocalizations.of(context)?.hadith_4}",
      "${AppLocalizations.of(context)?.hadith_5}",
      "${AppLocalizations.of(context)?.hadith_6}",
      "${AppLocalizations.of(context)?.hadith_7}",
      "${AppLocalizations.of(context)?.hadith_8}",
      "${AppLocalizations.of(context)?.hadith_9}",
      "${AppLocalizations.of(context)?.hadith_10}",
      "${AppLocalizations.of(context)?.hadith_11}",
      "${AppLocalizations.of(context)?.hadith_12}",
      "${AppLocalizations.of(context)?.hadith_13}",
      "${AppLocalizations.of(context)?.hadith_14}",
      "${AppLocalizations.of(context)?.hadith_15}",
      "${AppLocalizations.of(context)?.hadith_16}",
      "${AppLocalizations.of(context)?.hadith_17}",
      "${AppLocalizations.of(context)?.hadith_18}",
      "${AppLocalizations.of(context)?.hadith_19}",
      "${AppLocalizations.of(context)?.hadith_20}",
      "${AppLocalizations.of(context)?.hadith_21}",
      "${AppLocalizations.of(context)?.hadith_22}",
      "${AppLocalizations.of(context)?.hadith_23}",
      "${AppLocalizations.of(context)?.hadith_24}",
      "${AppLocalizations.of(context)?.hadith_25}",
      "${AppLocalizations.of(context)?.hadith_26}",
      "${AppLocalizations.of(context)?.hadith_27}",
      "${AppLocalizations.of(context)?.hadith_28}",
      "${AppLocalizations.of(context)?.hadith_29}",
      "${AppLocalizations.of(context)?.hadith_30}",
      "${AppLocalizations.of(context)?.hadith_31}",
      "${AppLocalizations.of(context)?.hadith_32}",
      "${AppLocalizations.of(context)?.hadith_33}",
      "${AppLocalizations.of(context)?.hadith_34}",
      "${AppLocalizations.of(context)?.hadith_35}",
      "${AppLocalizations.of(context)?.hadith_36}",
      "${AppLocalizations.of(context)?.hadith_37}",
      "${AppLocalizations.of(context)?.hadith_38}",
      "${AppLocalizations.of(context)?.hadith_39}",
      "${AppLocalizations.of(context)?.hadith_40}",
      "${AppLocalizations.of(context)?.hadith_41}",
      "${AppLocalizations.of(context)?.hadith_42}",
      "${AppLocalizations.of(context)?.hadith_43}",
      "${AppLocalizations.of(context)?.hadith_44}",
      "${AppLocalizations.of(context)?.hadith_45}",
      "${AppLocalizations.of(context)?.hadith_46}",
      "${AppLocalizations.of(context)?.hadith_47}",
      "${AppLocalizations.of(context)?.hadith_48}",
      "${AppLocalizations.of(context)?.hadith_49}",
      "${AppLocalizations.of(context)?.hadith_50}",

    ];
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
          '${AppLocalizations.of(context)?.hadith}',
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

