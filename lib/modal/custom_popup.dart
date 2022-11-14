
import 'package:flutter/material.dart';

import '../button/round_active_button.dart';

class Default extends StatefulWidget {
  const Default(
      {super.key, this.leftButton, this.rightButton, required this.leftClick, required this.rightClick});

  final String? leftButton;
  final String? rightButton;

  final VoidCallback leftClick;
  final VoidCallback rightClick;


  @override
  State<Default> createState() => _DefaultState();
}

class _DefaultState extends State<Default> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: RoundButton(
            onClick: () {
              widget.leftClick();
            },
            text: widget.leftButton??"Button",
            buttonColor: Colors.white,
            textStyle: TextStyle(
                fontSize: 16,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w700),
          ),
        ),
        Expanded(
          flex: 1,
          child: RoundButton(
            onClick: () {
              widget.rightClick();
            },
            text: widget.rightButton ?? "Button",
            textStyle: TextStyle(
                color: Theme.of(context).backgroundColor,
                fontWeight: FontWeight.w700,
                fontSize: 16),
          ),
        )
      ],
    );
  }
}

class Horizontal_1 extends StatefulWidget {
  const Horizontal_1({super.key, this.button,required this.buttonClick});

  final String? button;
  final VoidCallback buttonClick;
  @override
  State<Horizontal_1> createState() => _Horizontal_1State();
}

class _Horizontal_1State extends State<Horizontal_1> {
  @override
  Widget build(BuildContext context) {
    return RoundButton(
      onClick: (){
        widget.buttonClick;
      },
      text: widget.button??"Button",
      textStyle: TextStyle(
          color: Theme.of(context).backgroundColor,
          fontWeight: FontWeight.w700,
          fontSize: 16),
    );
  }
}

class Horizontal_2 extends StatefulWidget {
  const Horizontal_2({super.key, this.topButton, this.bottomButton, required this.topClick,required this.bottomClick});

  final String? topButton;
  final String? bottomButton;

  final VoidCallback topClick;
  final VoidCallback bottomClick;
  @override
  State<Horizontal_2> createState() => _Horizontal_2State();
}

class _Horizontal_2State extends State<Horizontal_2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundButton(
          onClick: (){
            widget.topClick;
          },
          text: widget.topButton??"Button",
          textStyle: TextStyle(
              color: Theme.of(context).backgroundColor,
              fontWeight: FontWeight.w700,
              fontSize: 16),
        ),
        RoundButton(
          onClick: (){
            widget.bottomClick;
          },
          buttonColor: Colors.white,
          text: widget.bottomButton??"Button",
          textStyle: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 16),
        )
      ],
    );
  }
}