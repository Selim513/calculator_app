import 'package:calculator_app/core/color/colors.dart';
import 'package:calculator_app/core/font/font_style.dart';
import 'package:flutter/material.dart';

class OperatorWidgets extends StatelessWidget {
  const OperatorWidgets({
    super.key,
    required this.operator,
    this.onTap,
  });
  final String operator;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            alignment: Alignment.center,
            height: 60,
            width: 60,
            child: Text(
              operator,
              style: getOperatorFont(color: appColor.operatorsColor),
            )),
      ),
    );
  }
}
