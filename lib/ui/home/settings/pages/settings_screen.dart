import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/ui/home/settings/widgets/bottom_sheet_language.dart';
import 'package:islami/ui/home/settings/widgets/bottom_sheet_theme.dart';
import 'package:islami/ui/my_theme.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: TextStyle(
              color: settingsProvider.currentTheme == ThemeMode.dark
                  ? MyTheme.yellowColor
                  : Colors.black,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: settingsProvider.currentTheme == ThemeMode.dark
                          ? MyTheme.yellowColor
                          : MyTheme.goldColor,
                      width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  settingsProvider.currentLang == 'en' ? 'English' : 'العربيه',
                  style: Theme.of(context).textTheme.headline5,
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: TextStyle(
              color: settingsProvider.currentTheme == ThemeMode.dark
                  ? MyTheme.yellowColor
                  : Colors.black,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: settingsProvider.currentTheme == ThemeMode.dark
                          ? MyTheme.yellowColor
                          : MyTheme.goldColor,
                      width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '${settingsProvider.currentTheme == ThemeMode.dark ? AppLocalizations.of(context)?.dark :AppLocalizations.of(context)?.light}',
                  style: Theme.of(context).textTheme.headline5,
                )),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return const LanguageBottomSheet();
        });
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return const ThemeBottomSheet();
        });
  }
}
