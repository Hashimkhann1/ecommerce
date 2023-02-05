import 'package:ecommerce/utils/routes/route_name.dart';
import 'package:ecommerce/utils/routes/routes.dart';
import 'package:ecommerce/view/auth/login_view.dart';
import 'package:ecommerce/view/auth/register_view.dart';
import 'package:ecommerce/view/splash_view/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.splash,
      onGenerateRoute: Routes.generateRoute,
      // home: LoginView(),
      // home: RegisterView(),
    );
  }
}