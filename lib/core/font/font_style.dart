import 'package:flutter/material.dart';

TextStyle getprimary(
    {FontWeight fontweight = FontWeight.bold,
    double fontsize = 20,
    color = Colors.black}) {
  return TextStyle(color: color, fontWeight: fontweight, fontSize: fontsize);
}

TextStyle getLargeFont(
    {FontWeight fontweight = FontWeight.bold,
    double fontsize = 25,
    color = Colors.black}) {
  return TextStyle(color: color, fontWeight: fontweight, fontSize: fontsize);
}

TextStyle getOperatorFont(
    {FontWeight fontweight = FontWeight.bold,
    double fontsize = 30,
    color = Colors.black}) {
  return TextStyle(color: color, fontWeight: fontweight, fontSize: fontsize);
}
