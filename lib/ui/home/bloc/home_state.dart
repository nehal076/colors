part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class ChangeColor extends HomeState {
  final Color color;
  final Color textColor;

  ChangeColor(this.color, this.textColor);
}
