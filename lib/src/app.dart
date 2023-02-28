import 'package:flutter/material.dart';
import 'package:flutter_qr_scanner_mypro/src/utils/router/router_configs.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'QR Scanner - MyPro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationProvider: routerConfigs.routeInformationProvider,
      routeInformationParser: routerConfigs.routeInformationParser,
      routerDelegate: routerConfigs.routerDelegate,
    );
  }
}
