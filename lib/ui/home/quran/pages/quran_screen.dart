import 'package:flutter/material.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/ui/home/quran/widgets/sura_name_widget.dart';
import 'package:islami/ui/my_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranScreen extends StatelessWidget {


  QuranScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> names = [
      "${AppLocalizations.of(context)?.al_Fatihah}",
      "${AppLocalizations.of(context)?.al_Baqarah}",
      "${AppLocalizations.of(context)?.al_imran}",
      "${AppLocalizations.of(context)?.an_nisa}",
      "${AppLocalizations.of(context)?.al_maaidah}",
      "${AppLocalizations.of(context)?.al_anaam}",
      "${AppLocalizations.of(context)?.al_aaraf}",
      "${AppLocalizations.of(context)?.al_anfal}",
      "${AppLocalizations.of(context)?.al_taubah}",
      "${AppLocalizations.of(context)?.yunus}",
      "${AppLocalizations.of(context)?.hud}",
      "${AppLocalizations.of(context)?.yusuf}",
      "${AppLocalizations.of(context)?.ar_raad}",
      "${AppLocalizations.of(context)?.ibrahim}",
      "${AppLocalizations.of(context)?.al_hijr}",
      "${AppLocalizations.of(context)?.an_nahl}",
      "${AppLocalizations.of(context)?.al_isra}",
      "${AppLocalizations.of(context)?.al_kahf}",
      "${AppLocalizations.of(context)?.maryam}",
      "${AppLocalizations.of(context)?.ta_ha}",
      "${AppLocalizations.of(context)?.al_anbiyaa}",
      "${AppLocalizations.of(context)?.al_hajj}",
      "${AppLocalizations.of(context)?.al_muaminun}",
      "${AppLocalizations.of(context)?.an_nur}",
      "${AppLocalizations.of(context)?.al_furqan}",
      "${AppLocalizations.of(context)?.ash_shuaara}",
      "${AppLocalizations.of(context)?.an_naml}",
      "${AppLocalizations.of(context)?.al_qasas}",
      "${AppLocalizations.of(context)?.al_aankabut}",
      "${AppLocalizations.of(context)?.ar_rum}",
      "${AppLocalizations.of(context)?.luqman}",
      "${AppLocalizations.of(context)?.as_sajdah}",
      "${AppLocalizations.of(context)?.al_ahzab}",
      "${AppLocalizations.of(context)?.saba}",
      "${AppLocalizations.of(context)?.fatir}",
      "${AppLocalizations.of(context)?.ya_sin}",
      "${AppLocalizations.of(context)?.as_saffat}",
      "${AppLocalizations.of(context)?.sad}",
      "${AppLocalizations.of(context)?.az_zumar}",
      "${AppLocalizations.of(context)?.ghafir}",
      "${AppLocalizations.of(context)?.fussilat}",
      "${AppLocalizations.of(context)?.ash_shura}",
      "${AppLocalizations.of(context)?.az_zukhruf}",
      "${AppLocalizations.of(context)?.ad_dukhan}",
      "${AppLocalizations.of(context)?.al_jathiyah}",
      "${AppLocalizations.of(context)?.al_ahqaf}",
      "${AppLocalizations.of(context)?.muhammad}",
      "${AppLocalizations.of(context)?.al_fath}",
      "${AppLocalizations.of(context)?.al_hujurat}",
      "${AppLocalizations.of(context)?.qaf}",
      "${AppLocalizations.of(context)?.ad_dhariyat}",
      "${AppLocalizations.of(context)?.at_tur}",
      "${AppLocalizations.of(context)?.an_najm}",
      "${AppLocalizations.of(context)?.al_qamar}",
      "${AppLocalizations.of(context)?.ar_rahman}",
      "${AppLocalizations.of(context)?.al_waqiaah}",
      "${AppLocalizations.of(context)?.al_Hhdid}",
      "${AppLocalizations.of(context)?.al_mujadilah}",
      "${AppLocalizations.of(context)?.al_hashr}",
      "${AppLocalizations.of(context)?.al_mumtahanah}",
      "${AppLocalizations.of(context)?.as_saff}",
      "${AppLocalizations.of(context)?.al_Jumuaah}",
      "${AppLocalizations.of(context)?.al_munafiqun}",
      "${AppLocalizations.of(context)?.at_taghabun}",
      "${AppLocalizations.of(context)?.at_talaq}",
      "${AppLocalizations.of(context)?.at_tahrim}",
      "${AppLocalizations.of(context)?.al_mulk}",
      "${AppLocalizations.of(context)?.al_qalam}",
      "${AppLocalizations.of(context)?.al_haqqah}",
      "${AppLocalizations.of(context)?.al_Maaarij}",
      "${AppLocalizations.of(context)?.nuh}",
      "${AppLocalizations.of(context)?.al_jinn}",
      "${AppLocalizations.of(context)?.al_muzammil}",
      "${AppLocalizations.of(context)?.al_mudathir}",
      "${AppLocalizations.of(context)?.al_qiyamah}",
      "${AppLocalizations.of(context)?.al_insane}",
      "${AppLocalizations.of(context)?.al_mursalat}",
      "${AppLocalizations.of(context)?.an_naba}",
      "${AppLocalizations.of(context)?.an_naziaat}",
      "${AppLocalizations.of(context)?.abasa}",
      "${AppLocalizations.of(context)?.at_takwir}",
      "${AppLocalizations.of(context)?.al_infitar}",
      "${AppLocalizations.of(context)?.al_mutaffifeen}",
      "${AppLocalizations.of(context)?.al_inshiqaq}",
      "${AppLocalizations.of(context)?.al_buruj}",
      "${AppLocalizations.of(context)?.at_tariq}",
      "${AppLocalizations.of(context)?.al_aala}",
      "${AppLocalizations.of(context)?.al_ghashiya}",
      "${AppLocalizations.of(context)?.al_fajr}",
      "${AppLocalizations.of(context)?.al_balad}",
      "${AppLocalizations.of(context)?.ash_shams}",
      "${AppLocalizations.of(context)?.al_layl}",
      "${AppLocalizations.of(context)?.ad_duha}",
      "${AppLocalizations.of(context)?.ash_sharh}",
      "${AppLocalizations.of(context)?.at_tin}",
      "${AppLocalizations.of(context)?.al_aAlaq}",
      "${AppLocalizations.of(context)?.al_qadr}",
      "${AppLocalizations.of(context)?.al_bayyinah}",
      "${AppLocalizations.of(context)?.az_zalzala}",
      "${AppLocalizations.of(context)?.al_aadiyat}",
      "${AppLocalizations.of(context)?.al_qariaah}",
      "${AppLocalizations.of(context)?.at_takathur}",
      "${AppLocalizations.of(context)?.al_aaAsr}",
      "${AppLocalizations.of(context)?.al_humazah}",
      "${AppLocalizations.of(context)?.al_fil}",
      "${AppLocalizations.of(context)?.al_quraish}",
      "${AppLocalizations.of(context)?.al_qariaah}",
      "${AppLocalizations.of(context)?.al_kauthar}",
      "${AppLocalizations.of(context)?.al_kafirun}",
      "${AppLocalizations.of(context)?.an_nasr}",
      "${AppLocalizations.of(context)?.al_masad}",
      "${AppLocalizations.of(context)?.al_ikhlas}",
      "${AppLocalizations.of(context)?.al_falaq}",
      "${AppLocalizations.of(context)?.an_nas}",
    ];
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
          '${AppLocalizations.of(context)?.sura_name}',
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
