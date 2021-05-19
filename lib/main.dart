import "package:flutter/material.dart";
import "package:kevinkobori_challenge_earbeats/views/home_page.dart";
import "package:flutter/services.dart";
import "dart:ui";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Earbeats",
      theme: ThemeData(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        hintColor: Colors.transparent,
        focusColor: Colors.transparent,
        fontFamily: "Lato",
      ),
      home:  HomePage(),
    );
  }
}
