import 'package:classage/responsive/Desktop.dart';
import 'package:classage/responsive/myLayout.dart';
import 'package:classage/responsive/responsive.dart';
import 'package:classage/responsive/Tablet.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MyLayout(
      tabletView: Tablet(),
      desktopView: Desktop(),
    );
  }
}
