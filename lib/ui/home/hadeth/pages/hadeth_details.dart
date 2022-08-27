import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/home/hadeth/pages/hadeth_screen.dart';
import 'package:islami/ui/home/hadeth/widgets/hadeth_widget.dart';
import 'package:provider/provider.dart';

import '../../../../providers/settings_provider.dart';
import '../../home-screen.dart';

class HadethDetails extends StatefulWidget {
  static String routeName = 'hadeth_details';

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  List<String> hadeth = [];
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as HadethDetailsArgs;
    if (hadeth.isEmpty) {
      readFile(args.index);
    }
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
            image : AssetImage(
              settingsProvider.changeBackground(),
            ),
          )),
      child: Scaffold(
        appBar: AppBar(

          title: Text(
            args.title,
            overflow: TextOverflow.ellipsis,
            style:TextStyle(
              color:settingsProvider.currentTheme == ThemeMode.dark ? Colors.white : Colors.black,
            ),
          ),
        ),
        body: ListView.builder(itemBuilder: (_, index) {
          return HadethWidget(hadeth[index]);
        },
        itemCount: hadeth.length,
        ),
      ),
    );
  }
  void readFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index+115}.txt');
     List<String> lines = [content];
    hadeth = lines;
    setState(() {});
  }
}

class HadethDetailsArgs {
  int index;
  String title;
  HadethDetailsArgs(this.index, this.title);
}
