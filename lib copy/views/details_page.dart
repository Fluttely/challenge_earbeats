import "dart:ui";
import "package:flutter/material.dart";
import "package:flutter_neumorphic/flutter_neumorphic.dart";
import "package:kevinkobori_challenge_earbeats/models/product_model.dart";
import "package:kevinkobori_challenge_earbeats/utils/consts.dart";
import "package:kevinkobori_challenge_earbeats/views/complementation_page.dart";
import 'package:delayed_display/delayed_display.dart';
// import 'package:kevinkobori_challenge_earbeats/utils/remottely_icons_icons.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({this.product});
  final ProductModel product;
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool isHover = false;
  bool isHover2 = false;
  bool isArrowNext = false;

  getDisplayDeplayed(BoxConstraints constraints) {
    return DelayedDisplay(
      delay: Duration(milliseconds: 1600),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.white.withOpacity(1),
              Colors.white.withOpacity(0.9),
              Colors.white.withOpacity(0.6),
              Colors.white.withOpacity(0),
            ],
          ),
        ),
        margin: EdgeInsets.fromLTRB(
            constraints.maxWidth > 1200 ? 128 : 32, 32, 32, 64),
        padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
        width: constraints.maxWidth > 760 ? 696 : 364,
        height: constraints.maxWidth > 1200 ? 533 : 400,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 32),
              constraints.maxWidth > 760
                  ? Row(
                      children: [
                        SizedBox(
                          width: 300,
                          height: 278,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.product.name,
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
                                widget.product.title,
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
                                widget.product.desc,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  // fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 64),
                            ],
                          ),
                        ),
                        SizedBox(width: 32),
                        SizedBox(
                          width: 300,
                          height: 278,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Spacer(),
                              Text(
                                widget.product.desc,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  // fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 64),
                            ],
                          ),
                        ),
                      ],
                    )
                  : SizedBox(
                      width: 300,
                      height: 278,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.product.name,
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
                            widget.product.title,
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
                            widget.product.desc,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              // fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 64),
                        ],
                      ),
                    ),
              constraints.maxWidth > 760
                  ? Container()
                  : SizedBox(
                      width: 300,
                      height: constraints.maxWidth > 760 ? 278 : 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          Text(
                            widget.product.desc,
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
                        ],
                      ),
                    ),
              Container(
                height: 100,
                width: constraints.maxWidth > 760 ? 696 : 364,
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isArrowNext = value;
                    });
                  },
                  child: Stack(
                    children: [
                      ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            height: 64,
                            width: 200,
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Frequency Range',
                                  style: TextStyle(
                                    fontFamily: 'Arimo',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 3,
                                      width: 100,
                                      color: Colors.black,
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 3,
                                        color: Colors.grey[300],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'htz',
                                      style: TextStyle(
                                        fontFamily: 'Arimo',
                                        fontSize: 10,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 16),
                          Container(
                            height: 64,
                            width: 200,
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sensitivity',
                                  style: TextStyle(
                                    fontFamily: 'Arimo',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 3,
                                      width: 80,
                                      color: Colors.black,
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 3,
                                        color: Colors.grey[300],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'SPI',
                                      style: TextStyle(
                                        fontFamily: 'Arimo',
                                        fontSize: 10,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 16),
                          Container(
                            height: 64,
                            width: 200,
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Harmonic Distortion',
                                  style: TextStyle(
                                    fontFamily: 'Arimo',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 3,
                                      width: 120,
                                      color: Colors.black,
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 3,
                                        color: Colors.grey[300],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'dB',
                                      style: TextStyle(
                                        fontFamily: 'Arimo',
                                        fontSize: 10,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 16),
                          Container(
                            height: 64,
                            width: 200,
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bluetooth Version',
                                  style: TextStyle(
                                    fontFamily: 'Arimo',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  'Bluetooth 5.0 compatible',
                                  style: TextStyle(
                                    fontFamily: 'Arimo',
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 16),
                          Container(
                            height: 64,
                            width: 200,
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Battery Specification',
                                  style: TextStyle(
                                    fontFamily: 'Arimo',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  'Litium Battery',
                                  style: TextStyle(
                                    fontFamily: 'Arimo',
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 16),
                          Container(
                            height: 64,
                            width: 200,
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Power Supply',
                                  style: TextStyle(
                                    fontFamily: 'Arimo',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  '5V 650mA USB Chargin via USB-C socket',
                                  style: TextStyle(
                                    fontFamily: 'Arimo',
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 16),
                        ],
                      ),
                      isArrowNext
                          ? Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                'assets/images/arrow_circle_foward.png',
                                width: 32,
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32),
              Divider(thickness: 2),
              SizedBox(height: 32),
              Row(
                children: [
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              ComplementationPage(
                            product: widget.product,
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
                                'WATCH COMPLEMENTATION',
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
                          width: isHover ? 256 : 0,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color:
                                    isHover ? Colors.black : Colors.transparent,
                                width: 3,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          // key: scaffoldKey,
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
                child: DelayedDisplay(
                  delay: Duration(milliseconds: 0),
                  fadingDuration: Duration(milliseconds: 500),
                  slidingBeginOffset: Offset(0, -0.1),
                  child: Image.asset(
                    'assets/images/bg.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: constraints.maxWidth > 750
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Spacer(flex: constraints.maxWidth > 1200 ? 6 : 1),
                      Hero(
                        tag: widget.product.id,
                        child: Image.asset(
                          widget.product.image,
                          height: constraints.maxWidth > 900
                              ? MediaQuery.of(context).size.height / 1.2
                              : MediaQuery.of(context).size.width / 1.2,
                          width: constraints.maxWidth > 900
                              ? MediaQuery.of(context).size.height / 1.2
                              : MediaQuery.of(context).size.width / 1.2,
                        ),
                      ),
                      Spacer(flex: 6),
                    ],
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
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              height: 92,
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
                                  Container(
                                    height: 28,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      onHover: (value) {
                                        setState(() {
                                          isHover2 = value;
                                        });
                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                child: Text(
                                                  'Back',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 18,
                                                    fontFamily: 'Arimo',
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              RotatedBox(
                                                quarterTurns: -3,
                                                child:
                                                    Icon(Icons.call_received),
                                              ),
                                            ],
                                          ),
                                          AnimatedContainer(
                                            duration:
                                                Duration(milliseconds: 300),
                                            width: isHover2 ? 68 : 0,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                  color: isHover2
                                                      ? Colors.black
                                                      : Colors.transparent,
                                                  width: 3,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
                          Container(
                            height: 28,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              onHover: (value) {
                                setState(() {
                                  isHover2 = value;
                                });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          'Back',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                            fontFamily: 'Arimo',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      RotatedBox(
                                        quarterTurns: -3,
                                        child: Icon(Icons.call_received),
                                      ),
                                    ],
                                  ),
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    width: isHover2 ? 68 : 0,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: isHover2
                                              ? Colors.black
                                              : Colors.transparent,
                                          width: 3,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
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
                    ? Alignment.centerLeft
                    : constraints.maxWidth > 760
                        ? Alignment.bottomLeft
                        : Alignment.bottomCenter,
                child: getDisplayDeplayed(constraints),
              ),
              constraints.maxWidth > 760
                  ? Container()
                  : Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 64),
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: Image.asset(
                            'assets/images/arrow_circle_foward.png',
                            width: 16,
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
