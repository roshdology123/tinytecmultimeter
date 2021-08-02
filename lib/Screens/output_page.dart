import 'package:flutter/material.dart';
import 'package:tinytecmultimeter/Components/FloattingButton.dart';
import 'package:tinytecmultimeter/Components/Reusable_Card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:usb_serial/transaction.dart';
import 'package:usb_serial/usb_serial.dart';

import 'dart:async';
import 'dart:typed_data';
import '../Constant.dart';


class OutputPage extends StatefulWidget {
  @override
  _OutputPageState createState() => _OutputPageState();
}

class _OutputPageState extends State<OutputPage> {

  int voltage = 0;
  int current = 0;
  int resistance = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tiny Tec Multimeter'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
                children: [
                  Expanded(child: GestureDetector(
                    onTap: (){
                      setState(() {
                        //TODO RECIEVE
                      });
                    },
                    child: ReusableCard(
                      colour:Color(0xFF11328) ,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Current" , style: klableTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                current.toString(),
                                style: kFontNumbers,
                              ),
                              Text(
                                'Ampere',
                                style:klableTextStyle,
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),),
                ],
              )),
          Expanded(child: ReusableCard(
            colour: Color(0xFF11328),
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Voltage " , style: klableTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      voltage.toString(),
                      style: kFontNumbers,
                    ),
                    Text(
                      'Volts',
                      style:klableTextStyle,
                    ),
                  ],
                ),

              ],
            ),),),
          Expanded(child: ReusableCard(
            colour: Color(0xFF11328),
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Resistance" , style: klableTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      resistance.toString(),
                      style: kFontNumbers,
                    ),
                    Text(
                      'Ohm',
                      style:klableTextStyle,
                    ),
                  ],
                ),

              ],
            ),),),
          Expanded(child: Row(

            children: [
              Expanded(child: ReusableCard(colour: Color(0xFF11328),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center ,
                      children:
                      [
                        RoundIconButton(
                          icon: FontAwesomeIcons.sync ,
                          onPressed: (){
                            setState(() {
                              //TODO Refresh
                            });
                          },
                        ),

                      ],
                    ),
                  ],
                ),
              ),),
            ],
          ),
          ),
        ],
      ),
    );

  }
}
