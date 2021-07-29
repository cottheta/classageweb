import 'package:classage/responsive/responsive.dart';
import 'package:flutter/material.dart';

class MyLayout extends StatelessWidget {
  const MyLayout(
      {Key? key,
        required this.desktopView,
        required this.tabletView,
      })
      : super(key: key);
  final Widget desktopView;
  final Widget tabletView;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, dimens) {
      if (dimens.maxWidth <= tabletWidth) {
        return tabletView;
      } else {
        return desktopView;
      }
    });
  }
}
