import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../pages/all_pages.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, path: '/'),
    AutoRoute(page: SettingsRoute.page, path: '/settings'),
    AutoRoute(page: AboutRoute.page, path: '/about'),
  ];
}