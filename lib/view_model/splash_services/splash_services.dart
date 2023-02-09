



import 'package:ecommerce/utils/routes/route_name.dart';
import 'package:flutter/cupertino.dart';

class SplashService {

  void changeScreen(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushNamed(context, RoutesName.login);
  }

}