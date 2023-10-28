import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mars_client/pages/home/bloc/home_bloc.dart';
import 'package:mars_client/theme/colors.dart';
import 'package:mars_client/theme/text_theme.dart';

import '../bloc/home_event.dart';
import '../bloc/home_state.dart';

class Label extends StatelessWidget {
  Label({
    super.key,
    required this.index,
  });

  final int index;

  final pages = [
    'Home',
    'Settings',
    'About',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            BlocProvider.of<HomeBloc>(context).add(ChangePage(newIndexPage: index));
          },
          child: Text(
            pages[index],
            style: menuPageTextStyle.copyWith(
              color: state.currentPageIndex == index
                  ? Colors.white
                  : textUnselectedColor,
            ),
          ),
        );
      },
    );
  }
}
