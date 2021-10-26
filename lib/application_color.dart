import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ApplicationColor with ChangeNotifier{
  bool _isLightBlue = true;

  bool get isLightBlue => _isLightBlue;

  void setLightBlue(bool value){
    _isLightBlue = value;
    notifyListeners();
  }

  Color get applicationColor => (_isLightBlue) ? Colors.lightBlue : Colors.amber;

}