
import 'package:flutter/material.dart';

class HomeState with ChangeNotifier {
  int value = 0;

  void increment() {
    value++;
    notifyListeners();
  }
}