import 'package:calculator_app/core/color/colors.dart';
import 'package:calculator_app/core/font/font_style.dart';
import 'package:calculator_app/features/widget/numbers.dart';
import 'package:calculator_app/features/widget/operators.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String operator = '';
  String fitstNumber = '';
  String secondNumber = '';
  String outPut = '';
  String inPut = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: appColor.backgroundColor,
          centerTitle: true,
          title: Text(
            'Calculator',
            style: getLargeFont(),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          inPut,
                          overflow: TextOverflow.ellipsis,
                          style: getLargeFont(fontsize: 30),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          outPut,
                          style: getLargeFont(),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
              //-----------------------------------the buttons-----------------------------

              Expanded(
                  flex: 2,
                  child: Container(
                    color: appColor.secondBackGroundColor,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: GestureDetector(
                                onTap: () {
                                  outPut = '';
                                  inPut = '';
                                  setState(() {});
                                },
                                child: Container(
                                    alignment: Alignment.center,
                                    height: 60,
                                    width: 60,
                                    child: Text(
                                      'C',
                                      style: getOperatorFont(color: Colors.red),
                                    )),
                              ),
                            ),
                            OperatorWidgets(
                              operator: 'DEL',
                              onTap: () {
                                outPut = outPut.substring(0, outPut.length - 1);
                                setState(() {});
                              },
                            ),
                            const OperatorWidgets(operator: '%'),
                            OperatorWidgets(
                              operator: '÷',
                              onTap: () {
                                outPut += '÷';
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                        //--------------------------------------second row-------------------------
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Numbers(
                              operator: '1',
                              onTap: () {
                                outPut += '1';
                                setState(() {});
                              },
                            ),
                            Numbers(
                              operator: '2',
                              onTap: () {
                                outPut += '2';
                                setState(() {});
                              },
                            ),
                            Numbers(
                              operator: '3',
                              onTap: () {
                                outPut += '3';
                                setState(() {});
                              },
                            ),
                            OperatorWidgets(
                              operator: 'x',
                              onTap: () {
                                outPut += '*';

                                setState(() {});
                              },
                            ),
                          ],
                        ),
                        //----------------------------------------third row--------------------------
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Numbers(
                              operator: '4',
                              onTap: () {
                                outPut += '4';
                                setState(() {});
                              },
                            ),
                            Numbers(
                              operator: '5',
                              onTap: () {
                                outPut += '5';
                                setState(() {});
                              },
                            ),
                            Numbers(
                              operator: '6',
                              onTap: () {
                                outPut += '6';
                                setState(() {});
                              },
                            ),
                            OperatorWidgets(
                              operator: '+',
                              onTap: () {
                                outPut += "+";
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                        //-----------------------------------fourth row----------------------------------
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Numbers(
                              operator: '7',
                              onTap: () {
                                outPut += '7';
                                setState(() {});
                              },
                            ),
                            Numbers(
                              operator: '8',
                              onTap: () {
                                outPut += '8';
                                setState(() {});
                              },
                            ),
                            Numbers(
                              operator: '9',
                              onTap: () {
                                outPut += '9';
                                setState(() {});
                              },
                            ),
                            OperatorWidgets(
                              operator: '__',
                              onTap: () {
                                outPut += '-';
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                        //-----------------------------------fifth row----------------------------------
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Numbers(
                              operator: '0',
                              onTap: () {
                                outPut += '0';
                                setState(() {});
                              },
                            ),
                            Numbers(
                              operator: '.',
                              onTap: () {
                                outPut += '.';
                                setState(() {});
                              },
                            ),
                            Numbers(
                              operator: '000',
                              onTap: () {
                                outPut += '000';
                                setState(() {});
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: GestureDetector(
                                onTap: () {
                                  Expression parse = Parser().parse(outPut);
                                  double result = parse.evaluate(
                                      EvaluationType.REAL, ContextModel());
                                  setState(() {
                                    inPut = result.toString();
                                  });
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: appColor.equalColor),
                                    alignment: Alignment.center,
                                    height: 60,
                                    width: 60,
                                    child: Text(
                                      '=',
                                      style:
                                          getOperatorFont(color: Colors.white),
                                    )),
                              ),
                            ),
                          ],
                        ),
                        //-----------------------------------fourth row----------------------------------
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}
