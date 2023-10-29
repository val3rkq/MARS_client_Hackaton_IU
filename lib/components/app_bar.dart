import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mars_client/pages/all_pages.dart';
import 'package:mars_client/bloc/export_bloc.dart';
import 'package:mars_client/theme/text_theme.dart';

import '../generated/l10n.dart';
import '../pages/home/widgets/label.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
    required this.isAdmin,
    required this.currentPageIndex,
  });

  final bool isAdmin;
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 70,
        color: Colors.transparent,
        padding: const EdgeInsets.fromLTRB(30, 17, 25, 15),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 15, sigmaX: 15),
          child: Container(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // pages
                SizedBox(
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...List.generate(
                        3,
                        (index) => Label(
                          index: index,
                          currentPageIndex: currentPageIndex,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 20,),

                // account log in / log out
                SizedBox(
                  width: 100,
                  child: TextButton(
                    onPressed: () {
                      if (isAdmin) {
                        // log out
                        BlocProvider.of<MainBloc>(context).add(LogoutAdmin());
                      } else {
                        // log in
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => AuthPage(),
                          ),
                        );
                      }
                    },
                    child: Text(
                      isAdmin ? S.of(context).logout : S.of(context).login,
                      style: menuPageTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
