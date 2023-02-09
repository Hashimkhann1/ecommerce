import 'package:ecommerce/res/colors.dart';
import 'package:ecommerce/res/components/text_widget.dart';
import 'package:ecommerce/res/components/textbutton_widget.dart';
import 'package:ecommerce/res/components/textformfield_widget.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        clipBehavior: Clip.none,
        children: [
          Container(
            height: screenHight * 0.8,
          ),
          Positioned(
            top: 0,
            child: Container(
              width: screenWidth,
              height: screenHight * 0.47,
              color: AppColor.ligtRed,
            ),
          ),
          Positioned(
            top: screenHight * 0.11,
            child: Container(
              width: 80,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('images/shoppingbag.png'),
                      fit: BoxFit.fill)),
            ),
          ),
          Positioned(
            top: screenHight * 0.3,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              width: screenWidth * 0.93,
              height: screenHight * 0.4,
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: AppColor.gray.withOpacity(0.6),
                        offset: const Offset(1.0, 1.0),
                        blurRadius: 10,
                        spreadRadius: 3)
                  ]),
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  TextWidget(
                    title: 'Rest your password',
                    textSize: 21.0,
                    textFontWeight: FontWeight.w600,
                    textColor: AppColor.ligtRed,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFormFieldWidget(
                    prefixicon: const Icon(Icons.lock_open_outlined),
                    hintText: 'Old Password',
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  TextFormFieldWidget(
                    prefixicon: const Icon(Icons.lock_open_outlined),
                    hintText: 'New Password',
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextButtonWidget(
                    title: 'Reset Password',
                    textColor: AppColor.white,
                    textFontSize: 17.0,
                    textFontWeight: FontWeight.w600,
                    borderRadius: 8.0,
                    backgroundColor: AppColor.ligtRed,
                    hight: 44.0,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
