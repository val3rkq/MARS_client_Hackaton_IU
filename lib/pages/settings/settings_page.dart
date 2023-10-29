import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../components/app_bar.dart';
import '../../components/title.dart';
import '../home/bloc/home_bloc.dart';
import '../home/bloc/home_state.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Positioned.fill(
                  child: ClipRect(
                    child: SettingsWidget(),
                  ),
                ),
              ),
            ),
          ),

          // appbar
          BlocBuilder<HomeBloc, HomeState>(
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

class SettingsWidget extends StatefulWidget {
  @override
  SettingsWidgetState createState() => SettingsWidgetState();
}

class SettingsWidgetState extends State<SettingsWidget> {
  String language = 'English';
  String temp_unit = 'C°';
  String lenght_unit = 'km';
  String pressure_unit = 'mm Hg';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.25),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      width: 500,
      height: 400,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(50, 50, 20, 20),
            child: Text('Settings',
                style: TextStyle(fontWeight: FontWeight.w200, fontSize: 24)),
          ),
          Row(children: [
            Padding(
                padding: EdgeInsets.fromLTRB(75, 20, 20, 20),
                child: Icon(
                  Icons.language,
                  color: Color.fromRGBO(0, 0, 0, 0.75),
                )),
            SizedBox(
              width: 70,
              child: Text(
                'Language',
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_back_ios))),
            SizedBox(
              width: 70,
              child: Text(
                language,
                textAlign: TextAlign.center,
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
          ]),
          Row(children: [
            Padding(
                padding: EdgeInsets.fromLTRB(75, 0, 20, 0),
                child: Icon(
                  Icons.bar_chart,
                  color: Color.fromRGBO(0, 0, 0, 0.75),
                )),
            SizedBox(
              width: 70,
              child: Text(
                'Units',
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_back_ios))),
            SizedBox(
              width: 70,
              child: Text(
                temp_unit,
                textAlign: TextAlign.center,
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
          ]),
          Row(children: [
            Padding(
                padding: EdgeInsets.fromLTRB(240, 0, 0, 0),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_back_ios))),
            SizedBox(
              width: 70,
              child: Text(
                pressure_unit,
                textAlign: TextAlign.center,
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
          ]),
          Row(children: [
            Padding(
                padding: EdgeInsets.fromLTRB(240, 0, 0, 0),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_back_ios))),
            SizedBox(
              width: 70,
              child: Text(
                lenght_unit,
                textAlign: TextAlign.center,
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
          ]),
          Row(children: [
            Padding(
                padding: EdgeInsets.fromLTRB(75, 0, 20, 0),
                child: IconButton(
                  icon: Icon(
                    Icons.logout,
                    color: Color.fromRGBO(0, 0, 0, 0.75),
                  ),
                  onPressed: () {},
                )),
            SizedBox(
              width: 70,
              child: Text(
                'logout',
                style: TextStyle(fontWeight: FontWeight.w200),
                textAlign: TextAlign.start,
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
