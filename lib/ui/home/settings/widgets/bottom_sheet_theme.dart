import 'package:flutter/material.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/ui/my_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              settingsProvider.changeTheme(ThemeMode.light);
            },
            child: settingsProvider.currentTheme == ThemeMode.light
                ? getSelectedTheme(context, '${AppLocalizations.of(context)?.light}')
                : getUnSelectedTheme(context,'${AppLocalizations.of(context)?.light}'),
          ),
          const SizedBox(height: 10,),
          InkWell(
            onTap: (){
              settingsProvider.changeTheme(ThemeMode.dark);
            },
            child: settingsProvider.currentTheme == ThemeMode.dark
                ? getSelectedTheme(context, '${AppLocalizations.of(context)?.dark}')
                : getUnSelectedTheme(context, '${AppLocalizations.of(context)?.dark}'),
          ),
        ],
      ),
    );
  }

  Widget getSelectedTheme(BuildContext context, String theme) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          theme,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color:settingsProvider.currentTheme == ThemeMode.dark ? MyTheme.yellowColor : MyTheme.goldColor),
        ),
         Icon(
          (Icons.check),
          color:settingsProvider.currentTheme == ThemeMode.dark ? MyTheme.yellowColor : MyTheme.goldColor,
        ),
      ],
    );
  }

  Widget getUnSelectedTheme(BuildContext context, String theme) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          theme,
          style: TextStyle(
            fontSize: 18,
            color:settingsProvider.currentTheme == ThemeMode.dark ?Colors.white  :Colors.black,
          ),
        ),
      ],
    );
  }
}
