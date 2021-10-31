import 'package:flutter/foundation.dart';

class TimeState with ChangeNotifier {
  int _timer;

  int get timer => _timer;

  set timer(int value) {
    _timer = value;
    notifyListeners();
  }
}