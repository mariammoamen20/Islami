import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/ui/home/quran/pages/quran_screen.dart';
import 'package:islami/ui/home/quran/widgets/verses_widget.dart';
import 'package:islami/ui/my_theme.dart';
import 'package:provider/provider.dart';

import '../../home-screen.dart';

class SuraDetails extends StatefulWidget {
  static const routeName = 'sura_details';

  SuraDetails({Key? key}) : super(key: key);

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verse = [];

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetialsArgs;
    if (verse.isEmpty) {
      readFile(args.index);
    }
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
          leading: settingsProvider.currentTheme == ThemeMode.dark
              ? InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                )
              : InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
          title: Text(
            args.title,
            style: TextStyle(
              color: settingsProvider.currentTheme == ThemeMode.dark
                  ? Colors.white
                  : Colors.black,
            ),
          ),
        ),
        body: verse.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 64),
                decoration: BoxDecoration(
                  color: settingsProvider.currentTheme == ThemeMode.dark
                      ? MyTheme.darkBlue
                      : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView.separated(
                    itemBuilder: (_, index) =>
                        VersesWidget(index, verse[index]),
                    separatorBuilder: (_, index) {
                      return Container(
                        height: 1,
                        color: settingsProvider.currentTheme == ThemeMode.dark
                            ? const Color(0xffFACC1D)
                            : MyTheme.goldColor,
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                      );
                    },
                    itemCount: verse.length),
              ),
      ),
    );
  }

  void readFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.trim().split('\r\n');
    print(lines);
    verse = lines;
    setState(() {});
  }
}

class SuraDetialsArgs {
  int index;

  String title;

  SuraDetialsArgs(this.index, this.title);
}
