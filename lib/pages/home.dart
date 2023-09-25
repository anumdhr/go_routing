import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routing/project/routes/app_route_constant.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Center(
              child: Text("Home"),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).pushNamed(MyAppRouteConstant.aboutRouteName);
            },
            child: Text(
              "About Page",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).pushNamed(MyAppRouteConstant.profileRouteName, pathParameters: {
                'username': "Akshit Mada",
              });
            },
            child: Text(
              "Profile Page",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).pushNamed(MyAppRouteConstant.contactUsRouteName);
            },
            child: Text(
              "Contact Us Page",
            ),
          ),
        ],
      ),
    );
  }
}
