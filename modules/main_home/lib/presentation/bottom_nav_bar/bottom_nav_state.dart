import 'package:equatable/equatable.dart';

abstract class BottomNavState extends Equatable {
  const BottomNavState();

  @override
  List<Object?> get props => [];
}

class ChangeIndex extends BottomNavState {
  final int currentIndex;

  const ChangeIndex(this.currentIndex);
}

class IndexChanged extends BottomNavState {}
