import 'package:flutter/material.dart';

class HistoryScanScreen extends StatelessWidget {
  const HistoryScanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('History Scan'),
        ),
      ),
    );
  }
}
