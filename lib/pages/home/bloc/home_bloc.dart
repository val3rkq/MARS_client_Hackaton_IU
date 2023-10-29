import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<ChangePage>((event, emit) {
      emit(HomeState(
        currentPageIndex: event.newIndexPage,
        isAdmin: state.isAdmin,
        isAutopilotStarted: false,
      ));
    });

    on<LoginAdmin>((event, emit) {
      emit(HomeState(
        isAdmin: true,
        currentPageIndex: state.currentPageIndex,
        isAutopilotStarted: false,
      ));
    });

    on<LogoutAdmin>((event, emit) {
      emit(HomeState(
        isAdmin: false,
        currentPageIndex: 0,
        isAutopilotStarted: true,
      ));
    });

    on<AutopilotTap>((event, emit) {
      emit(HomeState(
        isAdmin: state.isAdmin,
        isAutopilotStarted: !state.isAutopilotStarted,
        currentPageIndex: state.currentPageIndex,
      ));
    });
  }
}
