import 'dart:ui';

import 'package:flutter/material.dart';

ThemeData basicTheme(){
  TextTheme _basicTextTheme(TextTheme base){
    return base.copyWith(
      headline1: base.headline1.copyWith(
      fontFamily: "voestalpine",
      fontWeight: FontWeight.w700,
      //fontWeight: FontWeight.w700,
      fontSize: 24.0,
        color: Colors.white,
      )
    );
  }
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _basicTextTheme(base.textTheme),
    primaryColor: Colors.blueGrey[900],
    accentColor: Colors.blueGrey[50],
  );
}