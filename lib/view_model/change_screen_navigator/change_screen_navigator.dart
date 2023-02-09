


import 'package:flutter/material.dart';

class ChangeScreenNavigator with ChangeNotifier {

  int currentIndex = 0;

  changeScreen(int index) {
    currentIndex = index;
    notifyListeners();
  }
}