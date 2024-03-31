import 'package:equatable/equatable.dart';

abstract class HomePageNavState extends Equatable {
  const HomePageNavState();

  @override
  List<Object?> get props => [];
}

class ChangeIndex extends HomePageNavState {
  final int currentIndex;

  const ChangeIndex(this.currentIndex);
}

class IndexChanged extends HomePageNavState {}
