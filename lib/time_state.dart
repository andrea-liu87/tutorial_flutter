import 'package:flutter/foundation.dart';

class TimeState with ChangeNotifier {
  int _timer = 15;

  int get timer => _timer;

  set timer(int value) {
    _timer = value;
    notifyListeners();
  }
}