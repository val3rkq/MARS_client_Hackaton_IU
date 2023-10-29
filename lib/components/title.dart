import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleSite extends StatelessWidget {
  const TitleSite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Row(
          children: [
            Text(
              'MARS',
              style: GoogleFonts.ubuntu(
                fontSize: 26,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              'client',
              style: GoogleFonts.ubuntu(
                fontSize: 26,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}