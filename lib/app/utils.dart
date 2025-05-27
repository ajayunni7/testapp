import 'package:flutter/material.dart';

class ResponsiveHelper {
  final BuildContext context;
  late double screenWidth;
  late double screenHeight;

  ResponsiveHelper(this.context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }

  double width(double value) => screenWidth * value;
  double height(double value) => screenHeight * value;
  double fontSize(double value) => screenWidth * value;
}
