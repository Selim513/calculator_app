import 'package:calculator_app/core/font/font_style.dart';
import 'package:flutter/material.dart';

class Numbers extends StatelessWidget {
  const Numbers({
    super.key,
    required this.operator,
    this.onTap,
  });
  final String operator;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            alignment: Alignment.center,
            height: 70,
            width: 70,
            child: Text(
              operator,
              style: getOperatorFont(color: Colors.black),
            )),
      ),
    );
  }
}
