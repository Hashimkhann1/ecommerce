import 'package:ecommerce/res/colors.dart';
import 'package:ecommerce/res/components/text_widget.dart';
import 'package:ecommerce/res/components/textformfield_widget.dart';
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
        body: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  child: Container(
                    width: screenWidth,
                    height: screenHeigt * 0.47,
                    decoration: BoxDecoration(
                      color: AppColor.ligtRed
                    ),
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
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeigt * 0.3,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                    width: screenWidth * 0.93,
                    height: screenHeigt * 0.6,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.gray.withOpacity(0.6),
                          offset: Offset(1.0,1.0),
                          blurRadius: 10,
                          spreadRadius: 10
                        )
                      ]
                    ),
                    child: Column(
                      children: [
                        TextFormFieldWidget(prefixicon: Icon(Icons.email),hintText: 'Gmail',),
                        const SizedBox(height: 10.0,),
                        TextFormFieldWidget(prefixicon: Icon(Icons.lock_open_outlined),hintText: 'Password',obscureText: true,),
                      ],
                    )
                  ),
                )
              ],
            )
          ],
        )
    );
  }
}
