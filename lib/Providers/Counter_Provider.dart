import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class counter with ChangeNotifier {
  int _counter = 0;
  int get count => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decreament() {
    _counter--;
    notifyListeners();
  }

  void Zero() {
    _counter = 0;
    notifyListeners();
  }
}
