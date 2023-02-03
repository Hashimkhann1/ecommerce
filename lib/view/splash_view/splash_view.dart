import 'package:ecommerce/res/colors.dart';
import 'package:ecommerce/res/components/text_widget.dart';
import 'package:flutter/material.dart';


class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 90,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage('images/shoppingbag.png'),
                  fit: BoxFit.fill
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.white.withOpacity(0.3),
                    offset: Offset(1.0,1.0),
                    blurRadius: 10,
                    spreadRadius: 1
                  )
                ]
              ),
            ),
            const SizedBox(height: 10.0,),
            TextWidget(title: 'App Name',textSize: 20.0,textFontWeight: FontWeight.w600,textColor: AppColor.white,)
          ],
        ),
      ),
    );
  }
}
