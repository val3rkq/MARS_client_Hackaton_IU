import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mars_client/pages/settings/bloc/export_settings_bloc.dart';
import 'package:mars_client/services/export_all_services.dart';

import '../../../generated/l10n.dart';

class SideInfo extends StatelessWidget {
  const SideInfo({
    super.key,
    required this.isFirstItem,

    // default values
    this.temperature = 20,
    this.humidity = 30,
    this.pressure = 29.2,
    this.power = 42,
  });

  final bool isFirstItem;
  final double temperature;
  final double humidity;
  final double pressure;
  final double power;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> settings = {
      'langs': ['English', 'Русский'],
      'tempUnits': [S.of(context).c, S.of(context).f],
      'pressureUnits': [S.of(context).mmhg, S.of(context).pa],
      'speedUnits': [S.of(context).ms, S.of(context).kmh, S.of(context).mphh],
    };

    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        String tempUnit = settings['tempUnits'][state.tempUnitIndex];
        String pressureUnit =
            settings['pressureUnits'][state.pressureUnitIndex];
        String speedUnit = settings['speedUnits'][state.speedUnitIndex];

        return Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.25),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          padding: const EdgeInsets.fromLTRB(25, 20, 25, 16),
          width: MediaQuery.of(context).size.width * 0.4 - 100,
          child: isFirstItem
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        S.of(context).env,
                        style: GoogleFonts.ubuntu(
                          fontSize: 28,
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    // temperature
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '${S.of(context).temperature}: ${getTemperature(temperature, tempUnit, context)} $tempUnit',
                        style: GoogleFonts.ubuntu(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),

                    // humidity
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '${S.of(context).humidity}: ${humidity.toInt()} %',
                        style: GoogleFonts.ubuntu(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),

                    // pressure
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '${S.of(context).pressure}: ${getPressure(pressure, pressureUnit, context)} $pressureUnit',
                        style: GoogleFonts.ubuntu(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // power
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '${S.of(context).power}: $power %',
                        style: GoogleFonts.ubuntu(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),

                    // speed
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        '${S.of(context).speed}: ${getSpeed(power, speedUnit, context)} $speedUnit',
                        style: GoogleFonts.ubuntu(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
