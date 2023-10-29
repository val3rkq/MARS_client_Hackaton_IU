import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mars_client/components/app_bar.dart';
import 'package:mars_client/components/title.dart';

import '../home/bloc/home_bloc.dart';
import '../home/bloc/home_state.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                  ],
                ),
              ],
            ),
          ),

          // appbar
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              // get info if the user is logged in as admin
              bool isAdmin = state.isAdmin;

              return MyAppBar(
                currentPageIndex: 2,
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
