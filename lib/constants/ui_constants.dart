import 'package:flutter/material.dart';

const blackColor = Colors.black;
const greyColor = Colors.grey;
const greyDarkColor = Color(0xFFc2c5ce);
const greyBg = Color(0xFFf5f6fa);
const lightGrey = Color(0xFFebecf1);
const logoBlue = Color(0xFF3b97ff);
const richPink = Color(0xFFe64066);
const royalBlue = Color(0xFF3246d3);
const lightOrange = Color(0xFFf69e53);
const lightBlue = Color(0xFF15d4ff);
const lightRed = Color(0xFFf15172);
const whiteColor = Colors.white;

const double padding5 = 5.0;
const double padding6 = 6.0;
const double padding8 = 8.0;
const double padding10 = 10.0;
const double padding12 = 12.0;
const double padding14 = 14.0;
const double padding16 = 16.0;
const double padding20 = 20.0;
const double padding30 = 30.0;
const double padding40 = 40.0;
const double padding50 = 50.0;


SizedBox heightBox(double height) {
  return SizedBox(
    height: height,
  );
}

SizedBox widthBox(double width) {
  return SizedBox(
    width: width,
  );
}


TextStyle kCustomTextStyle(Color color, double size, bool isBold) {
  return TextStyle(
      color: color,
      fontSize: size,
      fontFamily: 'Kanit',
      fontWeight: isBold ? FontWeight.w800 : FontWeight.w400);
}
