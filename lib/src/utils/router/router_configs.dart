import 'package:flutter/material.dart';
import 'package:flutter_qr_scanner_mypro/src/view/onboarding/onboarding_screen.dart';
import 'package:flutter_qr_scanner_mypro/src/view/qr_scanner/qr_scanner_screen.dart';
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
        child: OnboardingScreen(),
      ),
    ),
    GoRoute(
      name: qrScannerRoute,
      path: "/scan",
      pageBuilder: (context, state) {
        return MaterialPage<void>(
          key: state.pageKey,
          child: const QrScannerScreen(),
        );
      },
    ),
  ],
);
