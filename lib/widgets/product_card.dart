import "package:flutter/material.dart";
import "dart:ui";
import "package:kevinkobori_challenge_earbeats/models/product_model.dart";
// import 'package:kevinkobori_challenge_earbeats/views/body_container.dart';
import 'package:delayed_display/delayed_display.dart';

class ProductCard extends StatefulWidget {
  ProductCard(
      {this.productsList,
      this.index,
      this.currentIndex,
      this.onTapNext,
      this.onTapPrevious,
      this.width}); //this.currentIndex,
  final List<ProductModel> productsList;
  final int index;
  final int currentIndex;
  // bool isEnabled;
  VoidCallback onTapPrevious;
  VoidCallback onTapNext;
  final double width;
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  Image image1;
  Image image2;
  Image image3;
  Image image4;
  Image image5;
  Image image6;
  Image image7;
  Image image8;
  Image image9;
  Image image10;
  Image image11;
  Image image12;
  Image image13;
  Image image14;
  Image image15;
  Image imagebg;
  Image imagebg2;
  bool isEnabled = true;
  bool isHover = false;
  bool isHoverPrevious = false;
  bool isHoverNext = false;

  @override
  void initState() {
    super.initState();
    // Future.delayed(Duration(milliseconds: 1201)).then((value) {
    //   setState(() {
    //     isEnabled = true;
    //   });
    // });
    image1 = Image.asset(widget.productsList[0].image);
    image2 = Image.asset(widget.productsList[1].image);
    image3 = Image.asset(widget.productsList[2].image);
    image4 = Image.asset(widget.productsList[3].image);
    image5 = Image.asset(widget.productsList[4].image);
    image6 = Image.asset(widget.productsList[0].imageBlur);
    image7 = Image.asset(widget.productsList[1].imageBlur);
    image8 = Image.asset(widget.productsList[2].imageBlur);
    image9 = Image.asset(widget.productsList[3].imageBlur);
    image10 = Image.asset(widget.productsList[4].imageBlur);
    image11 = Image.asset(widget.productsList[0].imageBlur);
    image12 = Image.asset(widget.productsList[1].imageBlur2);
    image13 = Image.asset(widget.productsList[2].imageBlur2);
    image14 = Image.asset(widget.productsList[3].imageBlur2);
    image15 = Image.asset(widget.productsList[4].imageBlur2);
    imagebg = Image.asset('assets/images/bg.png');
    imagebg2 = Image.asset('assets/images/bg_2.png');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Future.delayed(Duration(milliseconds: 1201)).then((value) {
    //   setState(() {
    //     isEnabled = true;
    //   });
    // });
    precacheImage(image1.image, context);
    precacheImage(image2.image, context);
    precacheImage(image3.image, context);
    precacheImage(image4.image, context);
    precacheImage(image5.image, context);
    precacheImage(image6.image, context);
    precacheImage(image7.image, context);
    precacheImage(image8.image, context);
    precacheImage(image9.image, context);
    precacheImage(image10.image, context);
    precacheImage(image11.image, context);
    precacheImage(image12.image, context);
    precacheImage(image13.image, context);
    precacheImage(image14.image, context);
    precacheImage(image15.image, context);
    precacheImage(imagebg.image, context);
    precacheImage(imagebg2.image, context);
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

  @override
  Widget build(BuildContext context) {
    int i1 = widget.currentIndex == 0
        ? widget.productsList.length - 1
        : widget.currentIndex - 1;
    return Stack(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          child: widget.currentIndex == widget.index
              ? Hero(
                  tag: widget.productsList[widget.index].id,
                  child: Image.asset(
                    widget.productsList[widget.index].image,
                  ),
                )
              : i1 == widget.index
                  ? Hero(
                      tag: widget.productsList[widget.index].id,
                      child: Image.asset(
                        widget.productsList[widget.index].imageBlur,
                      ),
                    )
                  : Hero(
                      tag: widget.productsList[widget.index].id,
                      child: Image.asset(
                        widget.productsList[widget.index].imageBlur2,
                      ),
                    ),
        ),
        Container(
          width: MediaQuery.of(context).size.height,
          height: MediaQuery.of(context).size.height,
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onHover: isEnabled
                      ? (value) {
                          setState(() {
                            isHoverPrevious = value;
                          });
                        }
                      : (value) {},
                  onTap: isEnabled
                      ? () {
                          setState(() {
                            isHoverPrevious = false;
                          });
                          widget.onTapPrevious();
                          waitToPressAgain();
                        }
                      : () {},
                  child: isHoverPrevious
                      ? DelayedDisplay(
                          delay: Duration(milliseconds: 0),
                          fadingDuration: Duration(milliseconds: 300),
                          slidingBeginOffset: Offset(-0.1, 0),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(64, 0, 0, 64),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: RotatedBox(
                                quarterTurns: -2,
                                child: Image.asset(
                                  'assets/images/arrow_circle_foward.png',
                                  width: 32,
                                ),
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ),
              ),
              Expanded(
                child: InkWell(
                  onHover: isEnabled
                      ? (value) {
                          setState(() {
                            isHoverNext = value;
                          });
                        }
                      : (value) {},
                  onTap: isEnabled
                      ? () {
                          setState(() {
                            isHoverNext = false;
                          });
                          widget.onTapNext();
                          waitToPressAgain();
                        }
                      : () {},
                  child: isHoverNext
                      ? DelayedDisplay(
                          delay: Duration(milliseconds: 0),
                          fadingDuration: Duration(milliseconds: 300),
                          slidingBeginOffset: Offset(0.1, 0),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 0, 64, 64),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                'assets/images/arrow_circle_foward.png',
                                width: 32,
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
