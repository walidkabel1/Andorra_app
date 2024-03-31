abstract class HomePageNavEvent {}

class ChangeIndexEvent extends HomePageNavEvent {
  final int index;
  final bool getData;

  ChangeIndexEvent(this.index, {this.getData = false});
}
