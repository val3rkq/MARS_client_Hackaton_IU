import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mars_client/pages/all_pages.dart';
import 'package:mars_client/bloc/export_bloc.dart';
import 'package:mars_client/theme/colors.dart';
import 'package:mars_client/theme/text_theme.dart';

import '../../../generated/l10n.dart';

class Label extends StatelessWidget {
  Label({
    super.key,
    required this.index,
    required this.currentPageIndex,
  });

  final int index;
  final int currentPageIndex;

  List<String> getPages(BuildContext context) {
    return [
      S.of(context).home,
      S.of(context).settings,
      S.of(context).about,
    ];
  }

  @override
  Widget build(BuildContext context) {
    final pages = getPages(context);
    return MouseRegion(
      child: GestureDetector(
        onTap: () {
          // replace page on tapped
          if (index != currentPageIndex) {
            if (index == 0) {
              Navigator.pushReplacement(
                context,
                CupertinoPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            } else if (index == 1) {
              Navigator.pushReplacement(
                context,
                CupertinoPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            } else if (index == 2) {
              Navigator.pushReplacement(
                context,
                CupertinoPageRoute(
                  builder: (context) => const AboutPage(),
                ),
              );
            }
            BlocProvider.of<MainBloc>(context)
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
