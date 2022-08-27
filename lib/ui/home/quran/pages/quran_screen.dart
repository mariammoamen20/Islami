import 'package:flutter/material.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/ui/home/quran/widgets/sura_name_widget.dart';
import 'package:islami/ui/my_theme.dart';
import 'package:provider/provider.dart';

class QuranScreen extends StatelessWidget {
  List<String> names = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  QuranScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Column(
      children: [
        Image.asset('assets/images/ic_quran.png'),
        settingsProvider.currentTheme == ThemeMode.dark
            ? Container(
                height: 2,
                color: MyTheme.yellowColor,
              )
            : Container(
                height: 2,
                color: MyTheme.goldColor,
              ),
        Text(
          'اسم السوره',
          style: settingsProvider.currentTheme == ThemeMode.dark
              ? Theme.of(context).textTheme.headline5
              : Theme.of(context).textTheme.headline5,
        ),
        settingsProvider.currentTheme == ThemeMode.dark
            ? Container(
                height: 2,
                color: MyTheme.yellowColor,
              )
            : Container(
                height: 2,
                color: MyTheme.goldColor,
              ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (_, index) =>
                SuraNameWidget(index, title: names[index]),
            itemCount: names.length,
            separatorBuilder: (_, index) {
              return settingsProvider.currentTheme == ThemeMode.dark
                  ? Container(
                      height: 1,
                      color: MyTheme.yellowColor,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                    )
                  : Container(
                      height: 1,
                      color: MyTheme.goldColor,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                    );
            },
          ),
        ),
      ],
    );
  }
}
