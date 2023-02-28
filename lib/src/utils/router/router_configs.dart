import 'package:flutter/material.dart';
import 'package:flutter_qr_scanner_mypro/src/view/detail_history_scan/detail_history_scan_screen.dart';
import 'package:flutter_qr_scanner_mypro/src/view/main/main_screen.dart';
import 'package:flutter_qr_scanner_mypro/src/view/onboarding/onboarding_screen.dart';
import 'package:go_router/go_router.dart';

import 'router_names.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final routerConfigs = GoRouter(
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  initialLocation: "/",
  routes: [
    GoRoute(
      name: onBoardRoute,
      path: "/",
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const OnboardingScreen(),
      ),
    ),
    GoRoute(
      name: mainRoute,
      path: "/main/:tab(scan|history)",
      pageBuilder: (context, state) {
        final String tab = state.params['tab']!;
        return MaterialPage<void>(
          key: state.pageKey,
          child: MainScreen(
            tab: tab,
          ),
        );
      },
      routes: [
        GoRoute(
            name: detailRoute,
            path: "history/:item",
            pageBuilder: (context, state) {
              return MaterialPage<void>(
                key: state.pageKey,
                child: const DetailHistoryScanScreen(),
              );
            })
      ],
    ),
    GoRoute(
      name: qrScannerRoute,
      path: "/main/scan",
      redirect: (context, state) =>
          context.namedLocation(mainRoute, params: {'tab': qrScannerRoute}),
    ),
    GoRoute(
      name: historyScanRoute,
      path: "/main/history",
      redirect: (context, state) =>
          context.namedLocation(mainRoute, params: {'tab': historyScanRoute}),
    ),
  ],
);
