import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mars_client/pages/all_pages.dart';
import 'package:mars_client/pages/home/bloc/home_bloc.dart';
import 'package:mars_client/pages/home/bloc/home_event.dart';
import 'package:mars_client/theme/colors.dart';
import 'package:mars_client/theme/text_theme.dart';

class Label extends StatelessWidget {
  Label({
    super.key,
    required this.index,
    required this.currentPageIndex,
  });

  final int index;
  final int currentPageIndex;

  final pages = [
    'Home',
    'Settings',
    'About',
  ];

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: GestureDetector(
        onTap: () {
          // replace page on tapped
          if (index != currentPageIndex) {
            if (index == 0) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            } else if (index == 1) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            } else if (index == 2) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutPage(),
                ),
              );
            }
            BlocProvider.of<HomeBloc>(context)
                .add(ChangePage(newIndexPage: index));
          }
        },
        child: Text(
          pages[index],
          style: menuPageTextStyle.copyWith(
            color:
                currentPageIndex == index ? Colors.white : textUnselectedColor,
          ),
        ),
      ),
    );
  }
}
