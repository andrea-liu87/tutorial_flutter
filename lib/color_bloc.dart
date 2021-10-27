import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter/material.dart';

enum ColorEvent { to_amber, to_LightBlue }

class ColorBloc {
  Color _color = Colors.amber;

  StreamController<ColorEvent> _eventController =
      new StreamController<ColorEvent>();

  StreamSink<ColorEvent> get eventSink => _eventController.sink;

  StreamController<Color> _stateController = new StreamController<Color>();

  StreamSink<Color> get _colorSink => _stateController.sink;

  Stream<Color> get colorState => _stateController.stream;

  void _eventMapToState(ColorEvent colorEvent) {
    if (colorEvent == ColorEvent.to_amber) {
      _color = Colors.amber;
    } else {
      _color = Colors.lightBlue;
    }
    _colorSink.add(_color);
  }

  ColorBloc() {
    _eventController.stream.listen((event) {
      _eventMapToState(event);
    });
  }

  void dispose() {
    _eventController.close();
    _stateController.close();
  }
}
