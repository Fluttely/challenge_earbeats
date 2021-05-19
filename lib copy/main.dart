import "package:flutter/material.dart";
import "package:kevinkobori_challenge_earbeats/views/home_page.dart";
import "package:flutter/services.dart";
// import "package:flutter_neumorphic/flutter_neumorphic.dart";
// import "package:flutter/material.dart";
import "dart:ui";
// import "package:flutter_card_swipper/flutter_card_swiper.dart";
// import "package:kevinkobori_challenge_earbeats/widgets/product_card.dart";
// import "package:flutter_svg/flutter_svg.dart";
// import "package:flutter_neumorphic/flutter_neumorphic.dart";
// import "package:visibility_detector/visibility_detector.dart";
import "package:kevinkobori_challenge_earbeats/models/product_model.dart";
// import "package:kevinkobori_challenge_earbeats/utils/consts.dart";
import "package:kevinkobori_challenge_earbeats/providers/product_provider.dart";
// import 'package:flutter_cursor/flutter_cursor.dart';
// import 'package:kevinkobori_challenge_earbeats/views/body_container.dart';
// import 'package:delayed_display/delayed_display.dart';
// import "package:flutter/material.dart";
// import "dart:ui";
// import "package:flutter_neumorphic/flutter_neumorphic.dart";
// import "package:kevinkobori_challenge_earbeats/models/product_model.dart";
// import "package:kevinkobori_challenge_earbeats/utils/consts.dart";
// import "package:kevinkobori_challenge_earbeats/views/details_page.dart";
// import "package:kevinkobori_challenge_earbeats/widgets/circle_blur_painter.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<ProductModel> productsList = ProductsState().categoryPS5Controls;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    //
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.transparent,
    //   statusBarBrightness: Brightness.dark,
    //   statusBarIconBrightness: Brightness.dark,
    //   systemNavigationBarIconBrightness: Brightness.light,
    // ));
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
      // systemNavigationBarColor: Colors.green,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Earbeats",
      theme: ThemeData(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        hintColor: Colors.transparent,
        focusColor: Colors.transparent,
        // canvasColor: Color(0xFF212735),
        // cardColor: Color(0xFF212735),
        // backgroundColor: Color(0xFF212735),
        // buttonColor: Color(0xFF212735),
        // primarySwatch: Colors.blue,
        fontFamily: "Lato",
      ),
      home:  HomePage(),//DetailsPage(product: productsList[0]), //
    );
  }
}
