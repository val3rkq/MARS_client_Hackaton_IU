class SettingsEvent {}

class SetDefaultSettings extends SettingsEvent {}

class UpdateSettings extends SettingsEvent {
  final int? newLangIndex;
  final int? newTemperature;
  final int? newPressure;
  final int? newSpeed;

  UpdateSettings({
    this.newTemperature,
    this.newPressure,
    this.newSpeed,
    this.newLangIndex,
  });
}
