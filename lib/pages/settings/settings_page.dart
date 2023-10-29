import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../components/app_bar.dart';
import '../../components/title.dart';
import 'package:mars_client/bloc/export_bloc.dart';
import 'settings_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          // content
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: SettingsWidget(),
              ),
            ),
          ),

          // appbar
          BlocBuilder<MainBloc, MainState>(
            builder: (context, state) {
              // get info if the user is logged in as admin
              bool isAdmin = state.isAdmin;

              return MyAppBar(
                currentPageIndex: 1,
                isAdmin: isAdmin,
              );
            },
          ),

          // title
          const Positioned(
            top: 26,
            left: 28,
            child: TitleSite(),
          ),
        ],
      ),
    );
  }
}
