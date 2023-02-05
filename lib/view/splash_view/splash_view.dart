import 'package:ecommerce/res/colors.dart';
import 'package:ecommerce/res/components/text_widget.dart';
import 'package:ecommerce/view_model/splash_services/splash_services.dart';
import 'package:flutter/material.dart';


class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  SplashService service = SplashService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    service.changeScreen(context);
  }

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
