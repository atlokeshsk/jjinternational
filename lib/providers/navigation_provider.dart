import 'package:flutter/material.dart';

enum Screen {
  home,
  product,
  profile,
  contact,
}

class NavigationProvider extends ChangeNotifier {
  Screen currentPage = Screen.home;

  void navigateTo(Screen screen) {
    currentPage = screen;
    notifyListeners();
  }
}
