import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/screens/home_screen.dart';
import 'package:flutter_chat_ui_starter/theme/theme.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
      home: Splash(),
    );
  }
}
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    
    Timer(Duration(seconds: 2), ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("voestalpine", style: Theme.of(context).textTheme.headline1),
          SizedBox(height: 30.0),
          SpinKitChasingDots(color: Colors.white, size: 30.0,)
        ],
      ),
    );
  }
}

