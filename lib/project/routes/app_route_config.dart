import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routing/pages/about.dart';
import 'package:go_routing/pages/contact_us.dart';
import 'package:go_routing/pages/error_page.dart';
import 'package:go_routing/pages/profile.dart';
import 'package:go_routing/project/routes/app_route_constant.dart';

import '../../pages/home.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: MyAppRouteConstant.homeRouteName,
        pageBuilder: (context, state) {
          return MaterialPage(child: Home());
        },
      ),
      GoRoute(
        path: '/contact_us',
        name: MyAppRouteConstant.contactUsRouteName,
        pageBuilder: (context, state) {
          return MaterialPage(child: ContactUs());
        },
      ),
      GoRoute(
        path: '/profile/:username',
        name: MyAppRouteConstant.profileRouteName,
        pageBuilder: (context, state) {
          return MaterialPage(child: Profile(username: state.pathParameters ['username']!,));
        },
      ),
      GoRoute(
        path: '/about',
        name: MyAppRouteConstant.aboutRouteName,
        pageBuilder: (context, state) {
          return MaterialPage(child: About());
        },
      ),
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(child: ErrorPage());
    },
  );
}
