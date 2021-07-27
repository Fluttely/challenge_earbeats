import "package:flutter/material.dart";

class Quantity extends StatefulWidget {
  final int swiperControllerIndex;
  final int productsListLength;
  const Quantity({
    this.swiperControllerIndex,
    this.productsListLength,
  });

  @override
  _QuantityState createState() => _QuantityState();
}

class _QuantityState extends State<Quantity> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            text: '0${widget.swiperControllerIndex + 1} ',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 24,
              fontFamily: 'Nunito-sans',
            ),
            children: [
              TextSpan(
                text: '/ 0${widget.productsListLength}',
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
    );
  }
}
