import 'package:flutter/material.dart';
import 'package:study/modal/custom_popup.dart';

class CustomFunction {
  customPopup(
      {required BuildContext context,
      required Widget title,
      required Widget content,
      required Widget footer}) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: title,
        content: content,
        actions: [footer],
      ),
    );
  }

  defaultPopup(
      {required BuildContext context,
      required String title,
      required String content,
      required String leftButton,
      required String rightButton,
      required VoidCallback leftClick,
      required VoidCallback rightClick,
      TextStyle? textStyle}) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(title,
            textAlign: TextAlign.center,
            style: textStyle ??
                const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w700)),
        content: Text(content,
            textAlign: TextAlign.center,
            style: textStyle ??
                const TextStyle(
                    color: Color(0xFF747474), fontWeight: FontWeight.w400)),
        actions: [
          Default(
              leftButton: leftButton,
              rightButton: rightButton,
              leftClick: leftClick,
              rightClick: rightClick)
        ],
      ),
    );
  }

  horizontal2Popup(
      {required BuildContext context,
      required String title,
      required String content,
      required String topButton,
      required String bottomButton,
      required VoidCallback topClick,
      required VoidCallback bottomClick,
      TextStyle? textStyle}) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(title,
            textAlign: TextAlign.center,
            style: textStyle ??
                const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w700)),
        content: Text(content,
            textAlign: TextAlign.center,
            style: textStyle ??
                const TextStyle(
                    color: Color(0xFF747474), fontWeight: FontWeight.w400)),
        actions: [
          Horizontal_2(
            topButton: topButton,
            bottomButton: bottomButton,
            topClick: topClick,
            bottomClick: bottomClick,
          )
        ],
      ),
    );
  }

  horizontal1Popup(
      {required BuildContext context,
      required String title,
      required String content,
      required String button,
      required VoidCallback buttonClick,
      TextStyle? textStyle}) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(title,
            textAlign: TextAlign.center,
            style: textStyle ??
                const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w700)),
        content: Text(content,
            textAlign: TextAlign.center,
            style: textStyle ??
                const TextStyle(
                    color: Color(0xFF747474), fontWeight: FontWeight.w400)),
        actions: [Horizontal_1(button: button, buttonClick: buttonClick)],
      ),
    );
  }

  showToast(
      {required BuildContext context,
        String? text,
        TextStyle? textStyle,
        EdgeInsets? margin,
        bool error = false,
        Color? backgroundColor}) {
    ScaffoldMessenger.of(context).clearSnackBars();
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: error
            ? Color(0xFFFFF1F0)
            : backgroundColor ??
            Theme.of(context).snackBarTheme.backgroundColor,
        margin: margin ?? EdgeInsets.all(40), //스낵바의 content와 스낵바 본인과의 거리를 늘린다.
        content: Text(
          text ?? "Text",
          textAlign: TextAlign.center,
          style: error
              ? TextStyle(
              color:
              Theme.of(context).snackBarTheme.disabledActionTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w400)
              : textStyle,
        ),
      ),
    );
  }
}
final customFunction = CustomFunction();