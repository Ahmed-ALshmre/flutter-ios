
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:splashscreen/splashscreen.dart';

import 'nav.dart';
void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 3,
        navigateAfterSeconds: new FancyBottomBarPage(),
        title: new Text('مرحبا بكم في جمعية البر الخيرية بمركز جذم ', style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: ArabicFonts.Cairo,
            package: 'google_fonts_arabic',
            fontSize: 14.0,
            color: Colors.black
        ),
        ),
        image: new Image.asset('assets/m1.jpg',),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
    );
  }
}

