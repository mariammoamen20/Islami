import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../providers/settings_provider.dart';
import '../../../my_theme.dart';

class SebhaScreen extends StatefulWidget {
  SebhaScreen({Key? key}) : super(key: key);

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen>
    with SingleTickerProviderStateMixin {
  int counter = 0;

  String do3aaText = ' سبحان الله';

  late AnimationController controller;

  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    setRotate(90);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void setRotate(int degree) {
    final angle = degree * 3.14 / 180;
    animation = Tween<double>(begin: 0, end: angle).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding:  EdgeInsets.all(MediaQuery.of(context).size.height *0.057),
      child: Orientation == Orientation.landscape ?
      Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  controller.forward(from: 0);
                  counter++;
                  if (counter > 33) {
                    do3aaText = 'الحمد الله';
                  }
                  if (counter > 66) {
                    do3aaText = 'الله أكبر ';
                  }
                  if (counter >= 100) {
                    counter = 0;
                    do3aaText = ' سبحان الله';
                  }
                  setState(() {});
                },
                child: AnimatedBuilder(
                  animation: animation,
                  child: Image.asset(
                    settingsProvider.currentTheme == ThemeMode.dark? 'assets/images/sebha_body_dark.png' : 'assets/images/body_of_sebha.png',
                    fit: BoxFit.cover,
                  ),
                  builder: (context, child) => Transform.rotate(
                    angle: animation.value,
                    child: child,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.04,
              ),
              Text(
                '${AppLocalizations.of(context)?.noOfTasbehat}',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding:  EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:settingsProvider.currentTheme == ThemeMode.dark ? MyTheme.darkBlue.withOpacity(0.5) : MyTheme.goldColor.withOpacity(0.5),
                ),
                child: Text(
                  '$counter',
                  style:  TextStyle(
                      fontSize: 20,
                      color: settingsProvider.currentTheme == ThemeMode.dark?Colors.white: Colors.black
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color:settingsProvider.currentTheme == ThemeMode.dark ? MyTheme.yellowColor : MyTheme.goldColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text(
                  do3aaText,
                  style:  TextStyle(
                    color: settingsProvider.currentTheme == ThemeMode.dark?Colors.black : Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ) :
      Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  controller.forward(from: 0);
                  counter++;
                  if (counter > 33) {
                    do3aaText = 'الحمد الله';
                  }
                  if (counter > 66) {
                    do3aaText = 'الله أكبر ';
                  }
                  if (counter >= 100) {
                    counter = 0;
                    do3aaText = ' سبحان الله';
                  }
                  setState(() {});
                },
                child: AnimatedBuilder(
                  animation: animation,
                  child: Image.asset(
                    settingsProvider.currentTheme == ThemeMode.dark? 'assets/images/sebha_body_dark.png' : 'assets/images/body_of_sebha.png',
                    fit: BoxFit.cover,
                  ),
                  builder: (context, child) => Transform.rotate(
                    angle: animation.value,
                    child: child,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.04,
              ),
              Text(
                '${AppLocalizations.of(context)?.noOfTasbehat}',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding:  EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:settingsProvider.currentTheme == ThemeMode.dark ? MyTheme.darkBlue.withOpacity(0.5) : MyTheme.goldColor.withOpacity(0.5),
                ),
                child: Text(
                  '$counter',
                  style:  TextStyle(
                      fontSize: 20,
                      color: settingsProvider.currentTheme == ThemeMode.dark?Colors.white: Colors.black
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color:settingsProvider.currentTheme == ThemeMode.dark ? MyTheme.yellowColor : MyTheme.goldColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text(
                  do3aaText,
                  style:  TextStyle(
                    color: settingsProvider.currentTheme == ThemeMode.dark?Colors.black : Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
