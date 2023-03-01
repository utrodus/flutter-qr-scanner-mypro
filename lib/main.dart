import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_qr_scanner_mypro/src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // prevent the screen horizontal orientation
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  runApp(const App());
}
