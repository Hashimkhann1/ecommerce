import 'package:ecommerce/utils/routes/route_name.dart';
import 'package:flutter/material.dart';

import '../../res/colors.dart';
import '../../res/components/text_widget.dart';
import '../../res/components/textbutton_widget.dart';
import '../../res/components/textformfield_widget.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeigt = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: AppColor.ligtRed,
        //   title: TextWidget(title: 'Login',),
        // ),
        body: SingleChildScrollView(
          child: Stack(
            alignment: AlignmentDirectional.center,
            // fit: StackFit.expand,
            // clipBehavior: Clip.none,
            children: [
              Container(height: screenHeigt,),
              Positioned(
                top: 0,
                child: Container(
                  width: screenWidth,
                  height: screenHeigt * 0.47,
                  decoration: BoxDecoration(color: AppColor.ligtRed),
                ),
              ),
              Positioned(
                top: screenHeigt * 0.11,
                child: Container(
                  width: 80,
                  height: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('images/shoppingbag.png'),
                          fit: BoxFit.fill)),
                ),
              ),
              Positioned(
                top: screenHeigt * 0.3,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                    width: screenWidth * 0.93,
                    height: screenHeigt * 0.61,
                    decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                              color: AppColor.gray.withOpacity(0.6),
                              offset: Offset(1.0, 1.0),
                              blurRadius: 10,
                              spreadRadius: 10)
                        ]),
                    child: Column(
                      children: [
                        TextWidget(
                          title: 'Sign up',
                          textSize: 30.0,
                          textFontWeight: FontWeight.w800,
                          textColor: AppColor.ligtRed,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        TextFormFieldWidget(
                          prefixicon: Icon(Icons.account_circle),
                          hintText: 'Name',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextFormFieldWidget(
                          prefixicon: Icon(Icons.email),
                          hintText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextFormFieldWidget(
                          prefixicon: Icon(Icons.lock_open_outlined),
                          hintText: 'Password',
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextFormFieldWidget(
                          prefixicon: Icon(Icons.lock_open_outlined),
                          hintText: 'Confirm Password',
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 14.0,
                        ),
                        TextButtonWidget(
                          title: 'Sign up',
                          borderRadius: 9.0,
                          textColor: AppColor.white,
                          textFontSize: 18.0,
                          textFontWeight: FontWeight.w600,
                          backgroundColor: AppColor.ligtRed,
                          width: screenWidth * 0.9,
                          hight: screenHeigt * 0.07,
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextWidget(title: 'Already have account'),
                            const SizedBox(
                              width: 3.0,
                            ),
                            TextButtonWidget(
                              onpressed: () {
                                Navigator.pushNamed(context, RoutesName.login);
                              },
                              title: 'Login',
                              textColor: AppColor.golden,
                              textFontSize: 18.0,
                              textFontWeight: FontWeight.w600,
                              borderRadius: 0,
                            )
                          ],
                        ),
                        // const SizedBox(height: 13.0,),
                        // TextButtonWidget(
                        //   title: 'Sign up',
                        //   borderRadius: 9.0,
                        //   textColor: AppColor.white,
                        //   fontSize: 18.0,
                        //   fontWeight: FontWeight.w600,
                        //   backgroundColor: AppColor.golden,
                        //   width: screenWidth * 0.9,
                        //   hight: screenHeigt * 0.07,
                        // ),
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}
