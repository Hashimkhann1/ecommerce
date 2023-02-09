import 'package:ecommerce/view/bottom_navigator/bottom_navigator_view.dart';
import 'package:ecommerce/view_model/change_screen_navigator/change_screen_navigator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ChangeScreenNavigator()),
        ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: RoutesName.splash,
        // onGenerateRoute: Routes.generateRoute,
        // home: LoginView(),
        home: BottomNavigatorView(),
      ),
    );
  }
}
