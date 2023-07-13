import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trashx_driver/screens/screens.dart';
import 'package:trashx_driver/router/router.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigator = GlobalKey<NavigatorState>();

class AppRouter {
  static final appRouterProvider = Provider<GoRouter>((ref) {
    return GoRouter(
      navigatorKey: _rootNavigator,
      initialLocation: '/schedule',
      routes: [
        StatefulShellRoute.indexedStack(

            builder: (BuildContext context, state, navigationShell) =>
                RootScreen(
                  child: navigationShell,
                ),
            branches: <StatefulShellBranch>[
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    name: RouteName.home,
                    path: '/home',
                    builder: (context, state) => HomeScreen(key: state.pageKey),
                    routes: [
                      GoRoute(
                        name: RouteName.orderTracking, 
                        path: '/order-tracking',
                        pageBuilder: (context, state) =>
                            MaterialPage(
                              key: state.pageKey,
                              child: OrderTrackingScreen(key: state.pageKey)
                            ),
                      ),
                    ],
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    name: RouteName.schedule,
                    path: '/schedule',
                    builder: (context, state) =>
                        ScheduleScreen(key: state.pageKey),
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    name: RouteName.profile,
                    path: '/profile',
                    builder: (context, state) =>
                        ProfileScreen(key: state.pageKey),
                  ),
                ],
              ),
            ])

        // GoRoute(
        //   path: '/order-details',
        //   builder: (context, state) => const OrderDetailsScreen(),
        // ),
      ],
    );
  });
}
