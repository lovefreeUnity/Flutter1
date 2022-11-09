import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study/button/round_active_button.dart';

class widgetPopup extends StatefulWidget {
  const widgetPopup({Key? key, this.widget, this.title = "Title"});

  final Widget? widget;
  final String title;

  @override
  State<widgetPopup> createState() => _widgetPopupState();
}

class _widgetPopupState extends State<widgetPopup> {
  @override
  Widget build(BuildContext context) {
    return widget.widget == null
        ? RoundButton(
            onClick: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: Text(widget.title),
                ),
              );
            },
          )
        : InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: Text(widget.title),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.5,horizontal: 10),
                child: widget.widget,
              ),
            ),
          );
  }
}
