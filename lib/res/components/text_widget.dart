import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget(
      {Key? key,
      required this.title,
      this.textColor,
      this.textFontWeight,
      this.textSize,
      })
      : super(key: key);

  String? title;
  Color? textColor;
  double? textSize;
  FontWeight? textFontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toString(),
      style: TextStyle(
        fontSize: textSize,
        fontWeight: textFontWeight,
        color: textColor,
      ),
    );
  }
}
