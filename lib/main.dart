import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/screens/home_screen.dart';
import 'package:flutter_chat_ui_starter/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InKom',
      debugShowCheckedModeBanner: false,
      theme: basicTheme(),
      // theme: ThemeData(
      //   primaryColor: Colors.blueGrey[900],
      //   accentColor: Colors.blueGrey[50]
      // ),
      home: HomeScreen(),
    );
  }
}