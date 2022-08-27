import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/ui/home/hadeth/pages/hadeth_screen.dart';
import 'package:islami/ui/home/quran/pages/quran_screen.dart';
import 'package:islami/ui/home/radio/pages/radio_screen.dart';
import 'package:islami/ui/home/sebha/pages/sebha_screen.dart';
import 'package:islami/ui/home/settings/pages/settings_screen.dart';
import 'package:islami/ui/my_theme.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home';

  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    QuranScreen(), //index 0
    HadethScreen(), //index 1
    SebhaScreen(), //index 2
    RadioScreen(),
    SettingsScreen() //index 3
  ];

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            settingsProvider.changeBackground(),
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_title,
              style: TextStyle(
                color: settingsProvider.currentTheme == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
              )),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor:
                  Theme.of(context).bottomNavigationBarTheme.backgroundColor,
              icon: const ImageIcon(AssetImage('assets/images/quran.png')),
              label: AppLocalizations.of(context)!.quran_label,
            ),
            BottomNavigationBarItem(
              backgroundColor:
                  Theme.of(context).bottomNavigationBarTheme.backgroundColor,
              icon: const ImageIcon(AssetImage('assets/images/hadeth.png')),
              label: AppLocalizations.of(context)!.hadeth_label,
            ),
            BottomNavigationBarItem(
                backgroundColor:
                    Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                icon:
                    const ImageIcon(AssetImage('assets/images/sebha_gold.png')),
                label: AppLocalizations.of(context)!.sebha_label),
            BottomNavigationBarItem(
                backgroundColor:
                    Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                icon: const ImageIcon(AssetImage('assets/images/radio.png')),
                label: AppLocalizations.of(context)!.radio_label),
            BottomNavigationBarItem(
                backgroundColor:
                    Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                icon: const Icon(Icons.settings),
                label: AppLocalizations.of(context)!.setting_label,
            ),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
