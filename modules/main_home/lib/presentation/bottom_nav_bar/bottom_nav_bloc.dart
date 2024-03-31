import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

import 'bottom_nav_event.dart';
import 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  final BehaviorSubject<int> index = BehaviorSubject<int>();

  BottomNavBloc() : super(const ChangeIndex(0)) {
    index.add(0);
    on<ChangeIndexEvent>(_changeIndex);
  }

  void _changeIndex(
      ChangeIndexEvent event, Emitter<BottomNavState> emit) async {
    index.value = event.index;
    if (event.getData) {
      // Modular.get<AllVisitsBloc>().add(FetchAllVisits());
      // Modular.get<VMSHomeBloc>().add(FetchVMSHome());
    }
    emit(ChangeIndex(index.value));
    emit(IndexChanged());
  }
}
