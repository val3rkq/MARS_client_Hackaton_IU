import 'package:flutter_bloc/flutter_bloc.dart';

import 'settings_event.dart';
import 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsInitial()) {

    on<SetDefaultSettings>((event, emit) {
      emit(SettingsState(
        langIndex: 0,
        tempUnitIndex: 0,
        pressureUnitIndex: 0,
        speedUnitIndex: 0,
      ));
    });

    on<UpdateSettings>((event, emit) {
      emit(
        SettingsState(
          langIndex: event.newLangIndex ?? state.langIndex,
          tempUnitIndex: event.newTemperature ?? state.tempUnitIndex,
          pressureUnitIndex: event.newPressure ?? state.pressureUnitIndex,
          speedUnitIndex: event.newSpeed ?? state.speedUnitIndex,
        ),
      );
    });

  }
}
