import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mars_client/data/data.dart';
import 'package:mars_client/data/data_service.dart';
import 'package:mars_client/bloc/export_bloc.dart';
import 'package:mars_client/services/export_all_services.dart';

import '../../generated/l10n.dart';
import 'widgets/all_widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final DataService _dataService = DataService();

  @override
  Widget build(BuildContext context) {
    Data? data;

    Future<void> getData() async {
      data = await _dataService.getData();
    }

    return Scaffold(
      body: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          // get info if the user is logged in as admin
          bool isAdmin = state.isAdmin;

          return StreamBuilder(
            stream: Stream.periodic(const Duration(milliseconds: 500)),
            builder: (context, sn) {
              return FutureBuilder(
                future: getData(),
                builder: (context, snapshot) {
                  // get x, y
                  int x = data?.coords![0] ?? 0;
                  int y = data?.coords![1] ?? 0;

                  return Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      // content

                      // if (snapshot.connectionState == ConnectionState.done) {
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/img/background.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  height: 50,
                                ),
                                // grid
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.48,
                                    height: 550,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.white.withOpacity(0),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        // grid
                                        Image.asset(
                                          'assets/img/grid.png',
                                          fit: BoxFit.cover,
                                        ),

                                        // point position
                                        getPadding(
                                          context: context,
                                          x: x.toDouble(),
                                          y: y.toDouble(),
                                          child: Container(
                                            width: 15,
                                            height: 15,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                // buttons
                                isAdmin
                                    ? Container(
                                        height: 80,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                        padding: const EdgeInsets.fromLTRB(
                                            30, 0, 30, 30),
                                        child: Center(
                                          child: ListView(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              BtnItem(
                                                icon: const Icon(
                                                  Icons.android_rounded,
                                                  color: Colors.white,
                                                ),
                                                isAutopilotStarted: state
                                                    .isAutopilotStarted,
                                                text: S.of(context).p_autopilot,
                                                onTap: () async {
                                                  BlocProvider.of<MainBloc>(
                                                      context)
                                                      .add(AutopilotTap());

                                                  await _dataService
                                                      .autopilot(!state
                                                      .isAutopilotStarted);
                                                },
                                              ),
                                              BtnItem(
                                                icon: const Icon(
                                                  Icons.arrow_upward_rounded,
                                                  color: Colors.white,
                                                ),
                                                text: S.of(context).w_mf,
                                                onTap: () async {
                                                  await _dataService.moveAction(
                                                      0, 1);
                                                },
                                              ),
                                              BtnItem(
                                                icon: const Icon(
                                                  Icons.arrow_downward_rounded,
                                                  color: Colors.white,
                                                ),
                                                text: S.of(context).s_mb,
                                                onTap: () async {
                                                  await _dataService.moveAction(
                                                      180, 1);
                                                },
                                              ),
                                              BtnItem(
                                                icon: const Icon(
                                                  Icons.arrow_back_rounded,
                                                  color: Colors.white,
                                                ),
                                                text: S.of(context).a_ml,
                                                onTap: () async {
                                                  await _dataService.moveAction(
                                                      270, 1);
                                                },
                                              ),
                                              BtnItem(
                                                icon: const Icon(
                                                  Icons.arrow_forward_rounded,
                                                  color: Colors.white,
                                                ),
                                                text: S.of(context).d_mr,
                                                onTap: () async {
                                                  await _dataService.moveAction(
                                                      90, 1);
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // appbar
                      MyAppBar(
                        currentPageIndex: 0,
                        isAdmin: isAdmin,
                      ),

                      // finally opened drawer
                      Drawer(
                        backgroundColor: Colors.white.withOpacity(0.5),
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 100, 70, 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // side data
                              Column(
                                children: [
                                  SideInfo(
                                    isFirstItem: true,
                                    temperature: data?.temperature ?? 30,
                                    humidity: data?.humidity ?? 20,
                                    pressure: data?.pressure ?? 29.2,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  SideInfo(
                                    isFirstItem: false,
                                    power: data?.power ?? 42,
                                  ),
                                ],
                              ),

                              const SizedBox(
                                height: 20,
                              ),

                              // khlamida monada
                              MediaQuery.of(context).size.height < 300 ||
                                      MediaQuery.of(context).size.width < 400
                                  ? const SizedBox()
                                  : KhlamidaMonadaWidget(
                                      khlamid: data?.khlamidaProbability ?? 15,
                                      monad: data?.manadaProbability ?? 79,
                                      bimbim: data?.bimbimProbability ?? 28,
                                    ),
                            ],
                          ),
                        ),
                      ),

                      // title
                      const Positioned(
                        top: 26,
                        left: 28,
                        child: TitleSite(),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
