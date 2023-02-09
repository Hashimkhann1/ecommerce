import 'package:ecommerce/res/colors.dart';
import 'package:flutter/material.dart';


class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({Key? key,this.hintText,this.prefixicon,this.keyboardType,this.controller,this.obscureText = false,}) : super(key: key);

  String? hintText;
  Icon? prefixicon;
  TextInputType? keyboardType;
  TextEditingController? controller;
  bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText!,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        fillColor: AppColor.gray.withOpacity(0.2),
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none
        ),
        hintText: hintText,
        prefixIcon: prefixicon,
      ),
    );
  }
}





// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(28),
// borderSide: BorderSide(color: AppColor.ligtRed,width: 2.0)
// ),
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(28),
// borderSide: BorderSide(color: AppColor.ligtRed,width: 2.0)
// ),
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(28),
// borderSide: BorderSide(color: AppColor.ligtRed,width: 2.0)
// )