import 'package:ecommerce/res/colors.dart';
import 'package:ecommerce/view/screen3/screen3.dart';
import 'package:ecommerce/view_model/change_screen_navigator/change_screen_navigator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../cart_view/cart_view.dart';
import '../products/products_view.dart';



class BottomNavigatorView extends StatelessWidget {
  const BottomNavigatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final changeScreenProvider = Provider.of<ChangeScreenNavigator>(context);

    List screens = const [
       ProductsView(),
      CartView(),
      Screen3(),
    ];

    return Scaffold(
      body: screens[changeScreenProvider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColor.ligtRed,
        elevation: 10.0,
        onTap: Provider.of<ChangeScreenNavigator>(context,listen: false).changeScreen,
        currentIndex: changeScreenProvider.currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits),label: 'Products'),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel),label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.collections),label: 'Collections'),
        ],
      ),
    );
  }
}
