import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<GenerateRandomColor>(_generateRandomColor);
  }

  void _generateRandomColor(HomeEvent _, Emitter<HomeState> emit) {
    final Color randomColor =
        Colors.primaries[math.Random().nextInt(Colors.primaries.length)];

    final Color textColor =
        randomColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;
    emit(ChangeColor(randomColor, textColor));
  }
}
