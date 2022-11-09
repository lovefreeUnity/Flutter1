import 'package:flutter/material.dart';
import 'package:study/MORTcolor.dart';

class FullButton extends StatefulWidget {
  const FullButton(
      {Key? key,
      this.textStyle,
      this.onTap,
      this.backgroundColor,
      this.padding,
      this.text,
      this.inactive = false});

  final bool inactive;
  final String? text;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final VoidCallback? onTap;

  @override
  State<FullButton> createState() => _FullButtonState();
}

class _FullButtonState extends State<FullButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap;
      },
      child: Container(
        width: double.infinity,
        color: widget.inactive
            ? Theme.of(context).disabledColor
            : widget.backgroundColor ?? Theme.of(context).primaryColor,
        child: Padding(
          padding: widget.padding ??
              const EdgeInsets.symmetric(vertical: 16.5, horizontal: 4),
          child: Text(widget.text ?? "Button",
              textAlign: TextAlign.center,
              style: widget.inactive
                  ?  TextStyle(fontSize: 18, color: Theme.of(context).backgroundColor ,fontWeight: FontWeight.w700)
                  : widget.textStyle ??
                       TextStyle(fontSize: 18, color:Theme.of(context).backgroundColor, fontWeight: FontWeight.w700)),
        ),
      ),
    );
  }
}
