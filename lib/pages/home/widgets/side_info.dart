import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mars_client/local_storage/local_storage.dart';

class SideInfo extends StatelessWidget {
  SideInfo({
    super.key,
    required this.isFirst,

    // default values
    this.temperature = 20,
    this.humidity = 30,
    this.pressure = 29.2,
    this.power = 42,
    this.speed = '70',
  });

  final bool isFirst;
  final double temperature;
  final double humidity;
  final double pressure;
  final double power;
  // speed i will count myself and later
  final String speed;

  final LocalStorage _localStorage = LocalStorage();

  @override
  Widget build(BuildContext context) {
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
      child: isFirst ? Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'Environmental parameters',
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
              'Temperature: $temperature ${_localStorage.temperatureUnit}',
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
              'Humidity: ${humidity.toInt()} %',
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
              'Pressure: $pressure ${_localStorage.pressureUnit}',
              style: GoogleFonts.ubuntu(
                fontSize: 20,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ],
      ) : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // power
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'Power: $power %',
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
              'Speed: $speed ${_localStorage.speedUnit}',
              style: GoogleFonts.ubuntu(
                fontSize: 20,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
