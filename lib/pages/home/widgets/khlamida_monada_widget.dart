import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KhlamidaMonadaWidget extends StatelessWidget {
  const KhlamidaMonadaWidget({
    super.key,
    required this.khlamid,
    required this.monad,
    required this.bimbim,
  });

  final int khlamid;
  final int monad;
  final int bimbim;

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
      height: 250,
      width: MediaQuery.of(context).size.width * 0.4 - 100,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 16),
      child: ClipRect(
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            BacteriumItem(
              name: 'Khlamid',
              percent: khlamid,
            ),
            BacteriumItem(
              name: 'Monad',
              percent: monad,
            ),
            BacteriumItem(
              name: "Bimbim",
              percent: bimbim,
            ),
          ],
        ),
      ),
    );
  }
}

class BacteriumItem extends StatelessWidget {
  const BacteriumItem({
    super.key,
    required this.name,
    required this.percent,
  });

  final String name;
  final int percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      width: 110,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            name,
            style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Image(
              fit: BoxFit.fitWidth,
              image: AssetImage('assets/img/$name.png'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '$percent %',
            style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
