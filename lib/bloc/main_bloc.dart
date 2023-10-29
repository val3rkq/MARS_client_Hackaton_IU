import 'package:flutter_bloc/flutter_bloc.dart';

import 'main_event.dart';
import 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial()) {
    on<ChangePage>((event, emit) {
      emit(MainState(
        locale: state.locale,
        currentPageIndex: event.newIndexPage,
        isAdmin: state.isAdmin,
        isAutopilotStarted: false,
      ));
    });

    on<ChangeLocale>((event, emit) {
      emit(MainState(
        locale: state.locale == 'ru' ? 'en' : 'ru',
        currentPageIndex: state.currentPageIndex,
        isAdmin: state.isAdmin,
        isAutopilotStarted: state.isAutopilotStarted,
      ));
    });

    on<LoginAdmin>((event, emit) {
      emit(MainState(
        locale: state.locale,
        isAdmin: true,
        currentPageIndex: state.currentPageIndex,
        isAutopilotStarted: false,
      ));
    });

    on<LogoutAdmin>((event, emit) {
      emit(MainState(
        locale: state.locale,
        isAdmin: false,
        currentPageIndex: 0,
        isAutopilotStarted: true,
      ));
    });

    on<AutopilotTap>((event, emit) {
      emit(MainState(
        locale: state.locale,
        isAdmin: state.isAdmin,
        isAutopilotStarted: !state.isAutopilotStarted,
        currentPageIndex: state.currentPageIndex,
      ));
    });
  }
}
