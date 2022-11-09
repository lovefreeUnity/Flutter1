import 'package:flutter/material.dart';
import 'package:study/button/round_active_button.dart';

class Popup extends StatefulWidget {
  const Popup(
      {Key? key,
      this.widget,
      this.title = "Title",
      this.titleTextStyle,
      this.contents = "contents",
      this.contextTextStyle,
      this.type = "default"});

  final Widget? widget;
  final String title;
  final String contents;
  final TextStyle? titleTextStyle;
  final TextStyle? contextTextStyle;
  final String type;

  @override
  State<Popup> createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlertDialog(
        title: Text(widget.title),
        titleTextStyle: widget.titleTextStyle ??
            const TextStyle(
                fontWeight: FontWeight.w700, fontSize: 18, color: Colors.black),
        content: Text(widget.contents),
        contentTextStyle: widget.contextTextStyle ??
            const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Color(0xFF747474)),
      ),
    );
  }
}
