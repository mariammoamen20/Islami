
import 'package:flutter/material.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class MyTheme {
  static const Color goldColor = Color(0xffB7935F);
  static const Color yellowColor = Color(0xffFACC1D);
  static const Color darkBlue = Color(0xff141A2E);
  static final ThemeData lightTheme = ThemeData(
    primaryColor: goldColor,
    scaffoldBackgroundColor: Colors.transparent,
    backgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 30
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w200),
      centerTitle: true,
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor:goldColor,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
      selectedLabelStyle: TextStyle(
        color: Colors.black,
      ),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),

    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize:20,
        color: Colors.black,
      ),
      headline4: TextStyle(
        fontSize: 28,
        color: Colors.black,
      ),
      headline5: TextStyle(
        fontSize: 25,
        color: Colors.black54,
      ),
      headline6: TextStyle(
        fontSize: 25,
        color: Colors.black,
      ),
      bodyText1: TextStyle(
        fontSize: 15,
        color: Colors.black54,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor:Colors.white
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    primaryColor: yellowColor,
    scaffoldBackgroundColor: Colors.transparent,
    backgroundColor: darkBlue,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
          color: Colors.black,
          size: 30
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w200),
      centerTitle: true,
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: darkBlue,
      selectedIconTheme: IconThemeData(
        color: yellowColor,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
      selectedLabelStyle: TextStyle(
        color:yellowColor,
      ),
      selectedItemColor: yellowColor,
      unselectedItemColor: Colors.white,
    ),

    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize:20,
        color: Colors.black,
      ),
      headline4: TextStyle(
        fontSize: 28,
        color: Colors.black,
      ),
      headline5: TextStyle(
        fontSize: 25,
        color: Colors.white,
      ),
      headline6: TextStyle(
        fontSize: 25,
        color: Colors.white,
      ),
      bodyText1: TextStyle(
        fontSize: 15,
        color: Colors.black54,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: darkBlue
    ),
  );
}
