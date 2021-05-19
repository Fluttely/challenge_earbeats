import 'package:flutter/material.dart';
import "dart:ui";
// import "package:flutter/material.dart";
import "package:flutter_neumorphic/flutter_neumorphic.dart";
import "package:kevinkobori_challenge_earbeats/models/product_model.dart";
import "package:kevinkobori_challenge_earbeats/utils/consts.dart";
// import "package:kevinkobori_challenge_earbeats/views/complementation_page.dart";
import 'package:delayed_display/delayed_display.dart';

class ComplementationPage extends StatefulWidget {
  ComplementationPage({this.product});
  final ProductModel product;
  @override
  _ComplementationPageState createState() => _ComplementationPageState();
}

class _ComplementationPageState extends State<ComplementationPage> {
  bool isHover = false;
  bool isHover2 = false;

  bool isHoverimage = false;
  bool isHoverimageBox = false;
  bool isHoverimageCable = false;

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
            constraints.maxWidth > 1200 ? 96 : 32, 32, 32, 128),
        padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
        width: constraints.maxWidth > 760 ? 696 : 364,
        height: constraints.maxWidth > 1200 ? 533 : 300,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32),
              SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Set includes:',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 42,
                        fontWeight: FontWeight.w900,
                      ),
                    ), //logo
                    SizedBox(height: 32),
                    Text(
                      '1. ' + widget.product.title,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 16,
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
                    SizedBox(height: 32),
                    Text(
                      '2. Bluetooth',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 16,
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
                    SizedBox(height: 32),
                    Text(
                      '3. Water Resistence',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 16,
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
                    SizedBox(height: 32),
                  ],
                ),
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
              Container(
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    // Positioned(
                    //   right: 0,
                    //   top: MediaQuery.of(context).size.height / 6,
                    //   child: DelayedDisplay(
                    //     delay: Duration(milliseconds: 1200),
                    //     child: InkWell(
                    //       onHover: (value) {
                    //         setState(() {
                    //           isHoverimageCable = value;
                    //         });
                    //       },
                    //       child: AnimatedContainer(
                    //         duration: Duration(milliseconds: 500),
                    //         height: constraints.maxWidth > 900
                    //             ? isHoverimageCable
                    //                 ? MediaQuery.of(context).size.height / 1.4
                    //                 : MediaQuery.of(context).size.height / 1.6
                    //             : isHoverimageCable
                    //                 ? MediaQuery.of(context).size.width / 1.4
                    //                 : MediaQuery.of(context).size.width / 1.6,
                    //         width: constraints.maxWidth > 900
                    //             ? isHoverimageCable
                    //                 ? MediaQuery.of(context).size.height / 1.4
                    //                 : MediaQuery.of(context).size.height / 1.6
                    //             : isHoverimageCable
                    //                 ? MediaQuery.of(context).size.width / 1.4
                    //                 : MediaQuery.of(context).size.width / 1.6,
                    //         child: Image.asset(
                    //           widget.product.imageCable,
                    //           // height:
                    //           // width:
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Positioned(
                    //   right: MediaQuery.of(context).size.width / 6,
                    //   top: MediaQuery.of(context).size.height / 5,
                    //   child: InkWell(
                    //     onHover: (value) {
                    //       setState(() {
                    //         isHoverimageBox = value;
                    //       });
                    //     },
                    //     child: DelayedDisplay(
                    //       delay: Duration(milliseconds: 400),
                    //       child: Image.asset(
                    //         widget.product.imageBox,
                    //         height: constraints.maxWidth > 900
                    //             ? MediaQuery.of(context).size.height / 1.6
                    //             : MediaQuery.of(context).size.width / 1.6,
                    //         width: constraints.maxWidth > 900
                    //             ? MediaQuery.of(context).size.height / 1.6
                    //             : MediaQuery.of(context).size.width / 1.6,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Positioned(
                      right: MediaQuery.of(context).size.width / 2.6,
                      top: MediaQuery.of(context).size.height / 4,
                      child: InkWell(
                        onHover: (value) {
                          setState(() {
                            isHoverimage = value;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          height: constraints.maxWidth > 900
                              ? isHoverimageCable
                                  ? MediaQuery.of(context).size.height / 1.4
                                  : MediaQuery.of(context).size.height / 1.6
                              : isHoverimageCable
                                  ? MediaQuery.of(context).size.width / 1.4
                                  : MediaQuery.of(context).size.width / 1.6,
                          width: constraints.maxWidth > 900
                              ? isHoverimageCable
                                  ? MediaQuery.of(context).size.height / 1.4
                                  : MediaQuery.of(context).size.height / 1.6
                              : isHoverimageCable
                                  ? MediaQuery.of(context).size.width / 1.4
                                  : MediaQuery.of(context).size.width / 1.6,
                          child: Hero(
                            tag: widget.product.id,
                            child: Image.asset(
                              widget.product.image,
                              fit: BoxFit.cover,
                              // height: constraints.maxWidth > 900
                              //     ? MediaQuery.of(context).size.height / 2
                              //     : MediaQuery.of(context).size.width / 2,
                              // width: constraints.maxWidth > 900
                              //     ? MediaQuery.of(context).size.height / 2
                              //     : MediaQuery.of(context).size.width / 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.fromLTRB(
              //       constraints.maxWidth > 750 ? 128 : 32,
              //       constraints.maxWidth > 750 ? 0 : 32,
              //       constraints.maxWidth > 750 ? 128 : 32,
              //       0),
              //   child: constraints.maxWidth > 750
              //       ? Row(
              //           children: [
              //             Container(
              //               height: 85,
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.center,
              //                 children: [
              //                   Spacer(),
              //                   Row(
              //                     children: [
              //                       Icon(Icons.bar_chart_rounded, size: 36),
              //                       SizedBox(width: 16),
              //                       Text(
              //                         'earbeats',
              //                         style: TextStyle(
              //                           fontWeight: FontWeight.w900,
              //                           fontSize: 24,
              //                           // fontFamily: 'Arimo',
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //             Spacer(flex: 10),
              //             InkWell(
              //               onTap: () {
              //                 Navigator.of(context).pop();
              //               },
              //               child: Container(
              //                 height: 92,
              //                 child: Column(
              //                   crossAxisAlignment: CrossAxisAlignment.center,
              //                   children: [
              //                     AnimatedContainer(
              //                       duration: Duration(milliseconds: 500),
              //                       height: 44,
              //                       width: 1,
              //                       color: Colors.black,
              //                     ),
              //                     SizedBox(height: 20),
              //                     Container(
              //                       height: 28,
              //                       child: InkWell(
              //                         onTap: () {
              //                           Navigator.of(context).pop();
              //                         },
              //                         onHover: (value) {
              //                           setState(() {
              //                             isHover2 = value;
              //                           });
              //                         },
              //                         child: Column(
              //                           crossAxisAlignment:
              //                               CrossAxisAlignment.start,
              //                           children: [
              //                             Row(
              //                               children: [
              //                                 Container(
              //                                   child: Text(
              //                                     'Back',
              //                                     style: TextStyle(
              //                                       fontWeight: FontWeight.w700,
              //                                       fontSize: 18,
              //                                       fontFamily: 'Arimo',
              //                                     ),
              //                                   ),
              //                                 ),
              //                                 SizedBox(
              //                                   width: 4,
              //                                 ),
              //                                 RotatedBox(
              //                                   quarterTurns: -3,
              //                                   child:
              //                                       Icon(Icons.call_received),
              //                                 ),
              //                               ],
              //                             ),
              //                             AnimatedContainer(
              //                               duration:
              //                                   Duration(milliseconds: 300),
              //                               width: isHover2 ? 68 : 0,
              //                               decoration: BoxDecoration(
              //                                 border: Border(
              //                                   bottom: BorderSide(
              //                                     color: isHover2
              //                                         ? Colors.black
              //                                         : Colors.transparent,
              //                                     width: 3,
              //                                   ),
              //                                 ),
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //             ),
              //           ],
              //         )
              //       : Row(
              //           children: [
              //             Icon(Icons.bar_chart_rounded, size: 36),
              //             SizedBox(width: 16),
              //             Text(
              //               'earbeats',
              //               style: TextStyle(
              //                 fontWeight: FontWeight.w900,
              //                 fontSize: 24,
              //                 // fontFamily: 'Arimo',
              //               ),
              //             ),
              //             Spacer(),
              //             Container(
              //               height: 28,
              //               child: InkWell(
              //                 onTap: () {
              //                   Navigator.of(context).pop();
              //                 },
              //                 onHover: (value) {
              //                   setState(() {
              //                     isHover2 = value;
              //                   });
              //                 },
              //                 child: Column(
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                     Row(
              //                       children: [
              //                         Container(
              //                           child: Text(
              //                             'Back',
              //                             style: TextStyle(
              //                               fontWeight: FontWeight.w700,
              //                               fontSize: 18,
              //                               fontFamily: 'Arimo',
              //                             ),
              //                           ),
              //                         ),
              //                         SizedBox(
              //                           width: 4,
              //                         ),
              //                         RotatedBox(
              //                           quarterTurns: -3,
              //                           child: Icon(Icons.call_received),
              //                         ),
              //                       ],
              //                     ),
              //                     AnimatedContainer(
              //                       duration: Duration(milliseconds: 300),
              //                       width: isHover2 ? 68 : 0,
              //                       decoration: BoxDecoration(
              //                         border: Border(
              //                           bottom: BorderSide(
              //                             color: isHover2
              //                                 ? Colors.black
              //                                 : Colors.transparent,
              //                             width: 3,
              //                           ),
              //                         ),
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //             ),
              //             Icon(Icons.menu),
              //           ],
              //         ),
              // ),
              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Padding(
              //     padding: EdgeInsets.fromLTRB(
              //         constraints.maxWidth > 750 ? 128 : 32,
              //         0,
              //         constraints.maxWidth > 750 ? 128 : 32,
              //         constraints.maxWidth > 750 ? 64 : 32),
              //     child: Container(
              //       height: 56,
              //       child: Row(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: [
              //           Text(
              //             '\$' + widget.product.price.toString(),
              //             maxLines: 1,
              //             overflow: TextOverflow.ellipsis,
              //             style: TextStyle(
              //               fontFamily: 'Quicksand',
              //               fontWeight: FontWeight.w700,
              //               fontSize: 42,
              //             ),
              //           ),
              //           SizedBox(width: 32),
              //           Container(
              //             height: 28,
              //             child: InkWell(
              //               onTap: () {},
              //               onHover: (value) {
              //                 setState(() {
              //                   isHover = value;
              //                 });
              //               },
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Row(
              //                     children: [
              //                       Container(
              //                         child: Text(
              //                           'BUY NOW',
              //                           style: TextStyle(
              //                             letterSpacing: 2,
              //                             fontWeight: FontWeight.w900,
              //                             fontFamily: 'Arimo',
              //                             fontSize: 12,
              //                           ),
              //                         ),
              //                       ),
              //                       Icon(Icons.call_made),
              //                     ],
              //                   ),
              //                   AnimatedContainer(
              //                     duration: Duration(milliseconds: 300),
              //                     width: isHover ? 92 : 0,
              //                     decoration: BoxDecoration(
              //                       border: Border(
              //                         bottom: BorderSide(
              //                           color: isHover
              //                               ? Colors.black
              //                               : Colors.transparent,
              //                           width: 3,
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //           Spacer(),
              //           constraints.maxWidth > 760
              //               ? Text(
              //                   'copyright - earbeats | 2020',
              //                   style: TextStyle(
              //                     color: Colors.grey,
              //                   ),
              //                 )
              //               : Container(),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // Align(
              //   alignment: constraints.maxWidth > 1400
              //       ? Alignment.centerLeft
              //       : constraints.maxWidth > 760
              //           ? Alignment.bottomLeft
              //           : Alignment.bottomCenter,
              //   child: getDisplayDeplayed(constraints),
              // ),
              // constraints.maxWidth > 760
              //     ? Container()
              //     : Align(
              //         alignment: Alignment.bottomCenter,
              //         child: Padding(
              //           padding: const EdgeInsets.only(bottom: 128),
              //           child: RotatedBox(
              //             quarterTurns: 1,
              //             child: Image.asset(
              //               'assets/images/arrow_circle_foward.png',
              //               width: 16,
              //             ),
              //           ),
              //         ),
              //       ),
            ],
          ),
        );
      },
    );
  }
}
