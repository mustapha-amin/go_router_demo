import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/screen_four.dart';
import 'package:go_router_demo/screen_three.dart';
import 'package:go_router_demo/screen_two.dart';
import 'package:url_strategy/url_strategy.dart';
import 'screen_one.dart';

void main() {
  setPathUrlStrategy();
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final GoRouter _goRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const ScreenOne(),
        routes: [
          GoRoute(
            path: 'screen2',
            builder: (BuildContext context, GoRouterState state) =>
                const ScreenTwo(),
          ),
          GoRoute(
            path: 'screen3',
            builder: (BuildContext context, GoRouterState state) =>
                const ScreenThree(),
          ),
          GoRoute(
            path: 'screen4',
            builder: (BuildContext context, GoRouterState state) =>
                const ScreenFour(),
          ),
        ],
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _goRouter.routerDelegate,
      routeInformationParser: _goRouter.routeInformationParser,
      routeInformationProvider: _goRouter.routeInformationProvider,
    );
  }
}
