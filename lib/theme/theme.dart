import 'dart:ui';
import 'package:flutter/material.dart';

int selectedIndex = 0;

ThemeData basicTheme(){
  TextTheme _basicTextTheme(TextTheme base){
    return base.copyWith(
      headline1: base.headline1.copyWith(
      fontFamily: "voestalpine",
      fontWeight: FontWeight.w300,
      fontSize: 24.0,
        color: Colors.white,
      ),
      headline2: base.headline2.copyWith(
      fontFamily: "voestalpine",
      fontWeight: FontWeight.w500,
      fontSize: 22.0,
      color: Colors.white,
      //letterSpacing: 1.0,
    ),
      caption: base.caption.copyWith(
        fontFamily: "voestalpine",
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        color: Colors.blueGrey,
      ),
    );
  }
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _basicTextTheme(base.textTheme),
    primaryColor: Colors.blueGrey[900],
    accentColor: Colors.blueGrey[50],
  );
}