import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mars_client/bloc/export_bloc.dart';
import 'package:mars_client/pages/settings/bloc/export_settings_bloc.dart';

import '../../generated/l10n.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> settings = {
      'langs': ['English', 'Русский'],
      'tempUnits': [S.of(context).c, S.of(context).f],
      'pressureUnits': [S.of(context).mmhg, S.of(context).pa],
      'speedUnits': [S.of(context).ms, S.of(context).kmh, S.of(context).mphh],
    };

    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
          width: 500,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // settings
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 50, 20, 20),
                child: Text(
                  S.of(context).settings,
                  style: const TextStyle(
                      fontWeight: FontWeight.w200, fontSize: 36),
                ),
              ),

              // language
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(75, 20, 20, 20),
                    child: Icon(
                      Icons.language,
                      color: Color.fromRGBO(0, 0, 0, 0.75),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                    child: Text(
                      S.of(context).language_text,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: IconButton(
                      onPressed: () {
                        int newLangIndex = (state.langIndex! - 1) % 2;
                        BlocProvider.of<SettingsBloc>(context)
                            .add(UpdateSettings(
                          newLangIndex: newLangIndex,
                        ));
                        BlocProvider.of<MainBloc>(context).add(ChangeLocale());
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                    child: Text(
                      S.of(context).locale,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      int newLangIndex = (state.langIndex! + 1) % 2;
                      BlocProvider.of<SettingsBloc>(context).add(UpdateSettings(
                        newLangIndex: newLangIndex,
                      ));
                      BlocProvider.of<MainBloc>(context).add(ChangeLocale());
                    },
                    icon: const Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),

              // units
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(75, 0, 20, 0),
                    child: Icon(
                      Icons.bar_chart,
                      color: Color.fromRGBO(0, 0, 0, 0.75),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                    child: Text(
                      S.of(context).units,
                      textAlign: TextAlign.start,
                    ),
                  ),

                  // temperature
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: IconButton(
                      onPressed: () {
                        int newTempIndex = (state.tempUnitIndex! - 1) % 2;
                        BlocProvider.of<SettingsBloc>(context)
                            .add(UpdateSettings(
                          newTemperature: newTempIndex,
                        ));
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                    child: Text(
                      settings['tempUnits'][state.tempUnitIndex],
                      textAlign: TextAlign.center,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      int newTempIndex = (state.tempUnitIndex! + 1) % 2;
                      BlocProvider.of<SettingsBloc>(context).add(UpdateSettings(
                        newTemperature: newTempIndex,
                      ));
                    },
                    icon: const Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),

              // pressure
              Row(children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(260, 0, 0, 0),
                    child: IconButton(
                        onPressed: () {
                          int newPressureIndex =
                              (state.pressureUnitIndex! - 1) % 2;
                          BlocProvider.of<SettingsBloc>(context)
                              .add(UpdateSettings(
                            newPressure: newPressureIndex,
                          ));
                        },
                        icon: const Icon(Icons.arrow_back_ios))),
                SizedBox(
                  width: 70,
                  child: Text(
                    settings['pressureUnits'][state.pressureUnitIndex],
                    textAlign: TextAlign.center,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    int newPressureIndex = (state.pressureUnitIndex! + 1) % 2;
                    BlocProvider.of<SettingsBloc>(context).add(UpdateSettings(
                      newPressure: newPressureIndex,
                    ));
                  },
                  icon: const Icon(Icons.arrow_forward_ios),
                ),
              ]),

              // speed
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(260, 0, 0, 0),
                    child: IconButton(
                      onPressed: () {
                        int newSpeedIndex = (state.speedUnitIndex! - 1) % 3;
                        BlocProvider.of<SettingsBloc>(context)
                            .add(UpdateSettings(
                          newSpeed: newSpeedIndex,
                        ));
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                    child: Text(
                      settings['speedUnits'][state.speedUnitIndex],
                      textAlign: TextAlign.center,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      int newSpeedIndex = (state.speedUnitIndex! + 1) % 3;
                      BlocProvider.of<SettingsBloc>(context)
                          .add(UpdateSettings(
                        newSpeed: newSpeedIndex,
                      ));
                    },
                    icon: const Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
