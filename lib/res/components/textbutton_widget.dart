import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  TextButtonWidget(
      {Key? key,
      this.hight,
      this.width,
      this.backgroundColor,
      this.onpressed,
      this.padding,
      this.textColor,
      this.textFontWeight,
      this.title,
      this.textFontSize,
        this.borderRadius
      })
      : super(key: key);

  VoidCallback? onpressed;
  String? title;
  Color? textColor;
  double? textFontSize;
  double? width;
  double? hight;
  double? borderRadius;
  FontWeight? textFontWeight;
  Color? backgroundColor;
  EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: hight,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius!)
        ),
        child: Text(
          title.toString(),
          style: TextStyle(
            fontWeight: textFontWeight,
            fontSize: textFontSize,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
