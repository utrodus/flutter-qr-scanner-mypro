import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  final int selectedIndex;
  MainScreen({
    Key? key,
    required String tab,
  })  : selectedIndex = indexFrom(tab),
        super(key: key);
  static int indexFrom(String tab) {
    switch (tab) {
      case "scan":
        return 0;

      case 'history':
        return 1;

      default:
        return 0;
    }
  }

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text("Main Screen"),
        ),
      ),
    );
  }
}
