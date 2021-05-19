import "package:flutter/material.dart";
import "dart:ui";
import "package:flutter_card_swipper/flutter_card_swiper.dart";
// import 'package:kevinkobori_challenge_earbeats/utils/remottely_icons_icons.dart';
import "package:kevinkobori_challenge_earbeats/widgets/product_card.dart";
// import "package:flutter_svg/flutter_svg.dart";
import "package:flutter_neumorphic/flutter_neumorphic.dart";
// import "package:visibility_detector/visibility_detector.dart";
import "package:kevinkobori_challenge_earbeats/models/product_model.dart";
import "package:kevinkobori_challenge_earbeats/utils/consts.dart";
import "package:kevinkobori_challenge_earbeats/providers/product_provider.dart";
// import 'package:flutter_cursor/flutter_cursor.dart';
// import 'package:kevinkobori_challenge_earbeats/views/body_container.dart';
import 'package:delayed_display/delayed_display.dart';
// import "package:flutter/material.dart";
// import "dart:ui";
// import "package:flutter_neumorphic/flutter_neumorphic.dart";
// import "package:kevinkobori_challenge_earbeats/models/product_model.dart";
// import "package:kevinkobori_challenge_earbeats/utils/consts.dart";
import "package:kevinkobori_challenge_earbeats/views/details_page.dart";
// import "package:kevinkobori_challenge_earbeats/widgets/circle_blur_painter.dart";
// import "package:kevinkobori_challenge_earbeats/views/complementation_page.dart";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SwiperController _swiperController = SwiperController();
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  List<ProductModel> productsList = ProductsState().categoryPS5Controls;
  int indexPage = 0;
  int indexType = 0;
  // int _swiperController.index = 0;
  bool isEnabled = true;
  bool isHover = false;
  bool isHoverPrevious = false;
  bool isHoverNext = false;
  @override
  void initState() {
    // setState(() {
    //   _swiperController.index = 0;
    //   isEnabled = true;
    // });
    _swiperController.move(0);
    super.initState();
  }

  @override
  void dispose() {
    _swiperController.dispose();
    super.dispose();
  }

  waitToPressAgain() {
    setState(() {
      isEnabled = false;
    });
    Future.delayed(Duration(milliseconds: 1201)).then((value) {
      setState(() {
        isEnabled = true;
      });
    });
  }

  onTapPrevious() {
    waitToPressAgain();
    _swiperController.previous();
    _swiperController.index = _swiperController.index.abs();
    _swiperController.index--;
    _swiperController.index = _swiperController.index % (productsList.length);
  }

  onTapNext() {
    waitToPressAgain();
    _swiperController.next();
    _swiperController.index = _swiperController.index.abs();
    _swiperController.index++;
    _swiperController.index = _swiperController.index % (productsList.length);
  }

  getDisplayDeplayed(BoxConstraints constraints) {
    return DelayedDisplay(
      delay: Duration(milliseconds: 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.white.withOpacity(0),
              Colors.white.withOpacity(0.6),
              Colors.white.withOpacity(0.9),
              Colors.white.withOpacity(1),
            ],
          ),
        ),
        margin: EdgeInsets.fromLTRB(
            32, 32, constraints.maxWidth > 1200 ? 96 : 32, 64),
        padding: const EdgeInsets.fromLTRB(32, 32, 32, 32),
        width: 400,
        height: 369,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              productsList[_swiperController.index].name,
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 28,
                fontWeight: FontWeight.w900,
              ),
            ), //logo
            SizedBox(
              height: 6,
            ),
            Text(
              productsList[_swiperController.index].title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700,
                fontSize: 52,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              productsList[_swiperController.index].desc,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                // fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 64,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        DetailsPage(
                      product: productsList[_swiperController.index],
                    ),
                    transitionDuration: Duration(seconds: 2),
                  ),
                );
              },
              onHover: (value) {
                setState(() {
                  isHover = value;
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text(
                          'EXPLORE PRODUCT',
                          style: TextStyle(
                            letterSpacing: 2,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Arimo',
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Icon(Icons.call_made),
                    ],
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: isHover ? 192 : 0,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: isHover ? Colors.black : Colors.transparent,
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: _scaffoldKey,
          drawer: Drawer(
            child: Container(
              color: color2,
              height: MediaQuery.of(context).size.height,
            ),
          ),
          extendBody: true,
          body: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/images/bg_2.png',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: constraints.maxWidth > 750 ? 6 : 1),
                  Container(
                    color: Colors.transparent,
                    child: Swiper(
                      // autoplay: true,
                      onIndexChanged: (index) {
                        setState(() {
                          // _swiperController.index = index;
                          _swiperController.index = index;
                          // _swiperController.config.activeIndex;
                        });
                        // print(_swiperController.index);
                      },
                      layout: SwiperLayout.STACK,
                      itemHeight: constraints.maxWidth > 900
                          ? MediaQuery.of(context).size.height / 1.2
                          : MediaQuery.of(context).size.width / 1.2,
                      itemWidth: constraints.maxWidth > 900
                          ? MediaQuery.of(context).size.height / 1.2
                          : MediaQuery.of(context).size.width / 1.2,
                      scrollDirection: Axis.horizontal,
                      controller: _swiperController,
                      itemCount: productsList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          children: [
                            ProductCard(
                              productsList: productsList,
                              index: index,
                              onTapPrevious: () => onTapPrevious(),
                              onTapNext: () => onTapNext(),
                              currentIndex: _swiperController.index,
                              width: 230,
                              // isEnabled: isEnabled,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Spacer(
                    flex: 6,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    constraints.maxWidth > 750 ? 128 : 32,
                    constraints.maxWidth > 750 ? 0 : 32,
                    constraints.maxWidth > 750 ? 128 : 32,
                    0),
                child: constraints.maxWidth > 750
                    ? Row(
                        children: [
                          Container(
                            height: 85,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Spacer(),
                                Row(
                                  children: [
                                    Icon(Icons.bar_chart_rounded, size: 36),
                                    SizedBox(width: 16),
                                    Text(
                                      'earbeats',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 24,
                                        // fontFamily: 'Arimo',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Spacer(flex: 10),
                          Container(
                            height: 85,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 500),
                                  height: 44,
                                  width: 1,
                                  color: Colors.black,
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'EarBuds',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    fontFamily: 'Arimo',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(flex: 1),
                          Container(
                            height: 85,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 500),
                                  height: 44,
                                  width: 1,
                                  color: Colors.transparent,
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Headphones',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    fontFamily: 'Arimo',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(flex: 1),
                          Container(
                            height: 85,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 500),
                                  height: 44,
                                  width: 1,
                                  color: Colors.transparent,
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Accessories',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    fontFamily: 'Arimo',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(flex: 1),
                          Container(
                            height: 85,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 500),
                                  height: 44,
                                  width: 1,
                                  color: Colors.transparent,
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Software',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    fontFamily: 'Arimo',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(flex: 1),
                          Container(
                            height: 85,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 500),
                                  height: 44,
                                  width: 1,
                                  color: Colors.transparent,
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Support',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    fontFamily: 'Arimo',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : Row(
                        children: [
                          Icon(Icons.bar_chart_rounded, size: 36),
                          SizedBox(width: 16),
                          Text(
                            'earbeats',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 24,
                              // fontFamily: 'Arimo',
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.menu),
                        ],
                      ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      constraints.maxWidth > 750 ? 128 : 32,
                      0,
                      constraints.maxWidth > 750 ? 128 : 32,
                      constraints.maxWidth > 750 ? 64 : 32),
                  child: Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: '0${_swiperController.index + 1} ',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 24,
                            fontFamily: 'Nunito-sans',
                          ),
                          children: [
                            TextSpan(
                              text: '/ 0${productsList.length}',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontFamily: 'Quicksand',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Text(
                        'copyright - earbeats | 2020',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: constraints.maxWidth > 1400
                    ? Alignment.centerRight
                    : Alignment.bottomRight,
                child:
                    isEnabled ? getDisplayDeplayed(constraints) : Container(),
              ),
            ],
          ),
        );
      },
    );
  }
}
