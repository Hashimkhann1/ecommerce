import 'package:ecommerce/res/colors.dart';
import 'package:ecommerce/res/components/text_widget.dart';
import 'package:ecommerce/res/components/textbutton_widget.dart';
import 'package:ecommerce/res/components/textformfield_widget.dart';
import 'package:ecommerce/utils/routes/route_name.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
            clipBehavior: Clip.none,
            children: [
              Container(height: screenHeigt * 0.9,),
              Positioned(
                top: 0,
                child: Container(
                  width: screenWidth,
                  height: screenHeigt * 0.47,
                  decoration: const BoxDecoration(color: AppColor.ligtRed),
                ),
              ),
              Positioned(
                top: screenHeigt * 0.11,
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
                top: screenHeigt * 0.3,
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                    width: screenWidth * 0.93,
                    height: screenHeigt * 0.55,
                    decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                              color: AppColor.gray.withOpacity(0.6),
                              offset: const Offset(1.0, 1.0),
                              blurRadius: 10,
                              spreadRadius: 10)
                        ]),
                    child: Column(
                      children: [
                        TextWidget(title: 'Login',textSize: 30.0,textFontWeight: FontWeight.w800,textColor: AppColor.ligtRed,),
                        const SizedBox(height: 20.0,),
                        TextFormFieldWidget(
                          prefixicon: const Icon(Icons.email),
                          hintText: 'Gmail',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextFormFieldWidget(
                          prefixicon: const Icon(Icons.lock_open_outlined),
                          hintText: 'Password',
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 14.0,
                        ),
                        TextButtonWidget(
                          title: 'Login',
                          borderRadius: 9.0,
                          textColor: AppColor.white,
                          textFontSize: 18.0,
                          textFontWeight: FontWeight.w600,
                          backgroundColor: AppColor.ligtRed,
                          width: screenWidth * 0.9,
                          hight: screenHeigt * 0.07,
                        ),
                        const SizedBox(height: 12.0,),
                        TextWidget(title: 'I don\'t have account'),
                        const SizedBox(height: 13.0,),
                        TextButtonWidget(
                          onpressed: () {
                            Navigator.pushNamed(context, RoutesName.signUp);
                          },
                          title: 'Sign up',
                          borderRadius: 9.0,
                          textColor: AppColor.white,
                          textFontSize: 18.0,
                          textFontWeight: FontWeight.w600,
                          backgroundColor: AppColor.golden,
                          width: screenWidth * 0.9,
                          hight: screenHeigt * 0.07,
                        ),
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}
