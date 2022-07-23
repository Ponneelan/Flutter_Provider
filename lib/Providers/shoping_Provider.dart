import 'package:flutter/material.dart';

class ShopingCard with ChangeNotifier {
  List<String> _list = ['orange', 'apple', 'mango'];

  int get lenght => _list.length;
  List<String> get cart => _list;

  void additem() {
    _list.add('perry');
    notifyListeners();
  }
}
