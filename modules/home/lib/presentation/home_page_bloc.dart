import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home/presentation/home_page_event.dart';
import 'package:home/presentation/home_page_state.dart';
import 'package:rxdart/rxdart.dart';

class HomePageNavBloc extends Bloc<HomePageNavEvent, HomePageNavState> {
  final BehaviorSubject<int> index = BehaviorSubject<int>();

  HomePageNavBloc() : super(const ChangeIndex(0)) {
    index.add(0);
    on<ChangeIndexEvent>(_changeIndex);
  }

  void _changeIndex(
      ChangeIndexEvent event, Emitter<HomePageNavState> emit) async {
    index.value = event.index;
    if (event.getData) {
      // Modular.get<AllVisitsBloc>().add(FetchAllVisits());
      // Modular.get<VMSHomeBloc>().add(FetchVMSHome());
    }
    emit(ChangeIndex(index.value));
    emit(IndexChanged());
  }
}
