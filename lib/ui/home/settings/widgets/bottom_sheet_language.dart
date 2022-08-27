import 'package:flutter/material.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/ui/my_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              settingsProvider.changeLang('en');
            },
            child: settingsProvider.currentLang == 'en'
                ? getSelectedItem('${AppLocalizations.of(context)?.english_lan}', context)
                : getUnSelectedItem('${AppLocalizations.of(context)?.english_lan}', context),
          ),
          const SizedBox(height: 10,),
          InkWell(
            onTap: () {
              settingsProvider.changeLang('ar');
            },
            child: settingsProvider.currentLang == 'ar'
                ? getSelectedItem('${AppLocalizations.of(context)?.arabic_lan}', context)
                : getUnSelectedItem('${AppLocalizations.of(context)?.arabic_lan}', context),
          ),
        ],
      ),
    );
  }

  Widget getSelectedItem(String text, BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: settingsProvider.currentTheme == ThemeMode.dark ? MyTheme.yellowColor : MyTheme.goldColor),
        ),
         Icon(
          Icons.check,
          color: settingsProvider.currentTheme == ThemeMode.dark ? MyTheme.yellowColor : MyTheme.goldColor,
        ),
      ],
    );
  }

  Widget getUnSelectedItem(String text, BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: settingsProvider.currentTheme == ThemeMode.dark ? Colors.white : Colors.black,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
