import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent{ to_amber, to_lightblue}

class ColorBloc extends Bloc<ColorEvent, Color>{
  Color _color;

  ColorBloc(Color initialState) : super(initialState){
    _color = initialState;
  }

  @override
  Stream<Color> mapEventToState(ColorEvent event) async*{
    _color = (event == ColorEvent.to_amber) ? Colors.amber : Colors.lightBlue;
    yield _color;
  }
}
