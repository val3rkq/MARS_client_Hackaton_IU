import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BtnItem extends StatelessWidget {
  const BtnItem({
    super.key,
    required this.text,
    required this.icon,
    this.isAutopilotStarted = false,
    required this.onTap,
  });

  final String text;
  final Icon icon;
  final bool isAutopilotStarted;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: TextButton(
        onPressed: onTap,
        style: ButtonStyle(
          padding: MaterialStateProperty.resolveWith((states) => const EdgeInsets.all(10)),
          surfaceTintColor:
              MaterialStateColor.resolveWith((states) => Colors.white54),
          backgroundColor:
              MaterialStateColor.resolveWith((states) => isAutopilotStarted ? Colors.orange : Colors.black38),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              icon,
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: GoogleFonts.ubuntu(
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
