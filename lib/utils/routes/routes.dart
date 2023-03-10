

import 'package:ecommerce/utils/routes/route_name.dart';
import 'package:ecommerce/view/auth/login_view.dart';
import 'package:ecommerce/view/auth/register_view.dart';
import 'package:ecommerce/view/splash_view/splash_view.dart';
import 'package:flutter/material.dart';




class Routes {

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.splash:
        return MaterialPageRoute(builder: (BuildContext context) => const SplashView());
      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context) => const LoginView());
      case RoutesName.signUp:
        return MaterialPageRoute(builder: (BuildContext context) => const RegisterView());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No Route Defined'),
            ),
          );
        });
    }
  }
}