import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'res/app_theme.dart';
import 'res/constant/key/global_key.dart';
import 'utils/router/router_configs.dart';
import 'view_model/qr_scanner_vm.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<QRScannerViewModel>(
          create: (context) => QRScannerViewModel(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'QR Scanner - MyPro',
        theme: appTheme,
        scaffoldMessengerKey: snackbarKey,
        routeInformationProvider: routerConfigs.routeInformationProvider,
        routeInformationParser: routerConfigs.routeInformationParser,
        routerDelegate: routerConfigs.routerDelegate,
      ),
    );
  }
}
