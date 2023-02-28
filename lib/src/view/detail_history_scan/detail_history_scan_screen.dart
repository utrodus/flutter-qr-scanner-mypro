import 'package:flutter/material.dart';

class DetailHistoryScanScreen extends StatelessWidget {
  const DetailHistoryScanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Detail History Scan'),
        ),
      ),
    );
  }
}
