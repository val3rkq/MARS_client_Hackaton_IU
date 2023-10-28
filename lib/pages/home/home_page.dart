import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mars_client/data/data.dart';
import 'package:mars_client/data/data_service.dart';
import 'package:mars_client/services/build_blur.dart';
import 'package:mars_client/services/get_padding.dart';

import 'widgets/all_widgets.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  HomePage({super.key});

  final DataService dataService = DataService();
  Data? data;

  Future<void> getData() async {
    data = await dataService.getData();
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      backgroundColor: Colors.black,
      body: StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 50)),
        builder: (context, index) {
          return FutureBuilder(
              future: getData(),
              builder: (context, snapshot) {
                // if (snapshot.connectionState == ConnectionState.done) {

                // get x, y
                int x = data?.coords![0] ?? 0;
                int y = data?.coords![1] ?? 0;
                print(data?.coords);

                return SafeArea(
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/background.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        // // appbar
                        // showAppBar(),

                        // content
                        Expanded(
                          child: Center(
                            child: buildBlur(
                              sigmaX: 15,
                              sigmaY: 15,
                              child: Container(
                                width: 600,
                                height: 600,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.white.withOpacity(0.25)),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    // grid
                                    Image.asset('assets/img/grid.png'),

                                    getPadding(
                                      x: x.toDouble(),
                                      y: y.toDouble(),
                                      child: Container(
                                        width: 15,
                                        height: 15,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/img/rover.png'),
                                            fit: BoxFit.cover,
                                          ),
                                          shape: BoxShape.circle,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }

              // },
              );
        },
      ),
    );
  }
}

Widget showAppBar() {
  return Positioned.fill(
    child: buildBlur(
      child: Container(
        height: 76,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.25),
            borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.fromLTRB(30, 17, 14, 15),
        margin: const EdgeInsets.fromLTRB(25, 10, 25, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // title
            Row(
              children: [
                Text(
                  'MARS',
                  style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'client',
                  style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),

            // pages
            SizedBox(
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Label(index: 0),
                  Label(index: 1),
                  Label(index: 2),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
