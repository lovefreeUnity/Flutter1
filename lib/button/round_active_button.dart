import 'package:flutter/material.dart';

class RoundButton extends StatefulWidget {
  final String? text;
  final double? borderRadius;
  final TextStyle? textStyle;
  final Color? buttonColor;
  final EdgeInsets? padding;
  final bool inactive;
  final VoidCallback? onClick;

  const RoundButton(
      {super.key,
      this.onClick,
      this.inactive = false,
      this.padding,
      this.textStyle,
      this.buttonColor,
      this.text,
      this.borderRadius});

  @override
  State<RoundButton> createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onClick,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 14),
          color: widget.inactive
              ? Theme.of(context).disabledColor
              : widget.buttonColor ?? Theme.of(context).primaryColor,
        ),
        child: Padding(
          padding:
              widget.padding ?? const EdgeInsets.fromLTRB(4, 16.5, 4, 16.5),
          child: Text(widget.text ?? "Button",
              textAlign: TextAlign.center,
              style: widget.inactive
                  ? TextStyle(color: Theme.of(context).backgroundColor)
                  : widget.textStyle ??
                      TextStyle(
                          color: Theme.of(context).backgroundColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w700)),
        ),
      ),
    );
  }
}
