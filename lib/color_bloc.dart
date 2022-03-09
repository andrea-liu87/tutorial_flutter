import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

enum ColorEvent{ to_amber, to_lightblue}

class ColorBloc extends HydratedBloc<ColorEvent, Color>{

  @override
  Color get initialState => super.initialState ?? Colors.amber;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async*{
    yield (event == ColorEvent.to_amber) ? Colors.amber : Colors.lightBlue;
  }

  @override
  Color fromJson(Map<String, dynamic> json) {
    try {
      int value = json['color'] as int;
      return Color(value);
    } catch(_) {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(Color state) {
    try{
      return {'color': state.value};
    } catch(_) {
      return null;
    }
  }
}
