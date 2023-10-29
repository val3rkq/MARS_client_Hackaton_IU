
class SettingsState {
  final int? langIndex;
  final int? tempUnitIndex;
  final int? pressureUnitIndex;
  final int? speedUnitIndex;

  SettingsState({
    this.langIndex = 0,
    this.tempUnitIndex = 0,
    this.pressureUnitIndex = 0,
    this.speedUnitIndex = 0,
  });
}

class SettingsInitial extends SettingsState {}
