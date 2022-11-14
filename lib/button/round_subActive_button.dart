import 'package:flutter/material.dart';

class RoundSubActivityButton extends StatefulWidget {
  const RoundSubActivityButton(
      {super.key,
      this.onClick,
      this.text,
      this.round,
      this.padding,
      this.borderColor,
      this.textStyle,
      this.disable,
      this.buttonColor});

  @override
  State<RoundSubActivityButton> createState() => _RoundSubActivityButtonState();
  final String? text;
  final double? round;
  final bool? disable;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final GestureTapCallback? onClick;
  final Color? borderColor;
  final Color? buttonColor;
}

class _RoundSubActivityButtonState extends State<RoundSubActivityButton> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onClick,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.round ?? 14),
          color: widget.disable ?? false
              ? Theme.of(context).disabledColor
              : widget.buttonColor ?? Theme.of(context).backgroundColor,
          border: widget.disable ?? false
              ? null
              : Border.all(color: widget.borderColor ?? Theme.of(context).primaryColor,),
        ),
        child: Center(
          child: Padding(
            padding:
                widget.padding ?? const EdgeInsets.fromLTRB(0, 16.5, 0, 16.5),
            child: Text(
              widget.text ?? "Button",
              style: widget.disable ?? false
                  ? TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).backgroundColor,
                      fontWeight: FontWeight.w700)
                  : widget.textStyle ??
                      TextStyle(
                          fontSize: 18,
                          color: widget.borderColor ?? Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}
