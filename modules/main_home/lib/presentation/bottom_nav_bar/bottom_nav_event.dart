abstract class BottomNavEvent {}

class ChangeIndexEvent extends BottomNavEvent {
  final int index;
  final bool getData;

  ChangeIndexEvent(this.index, {this.getData = false});
}
