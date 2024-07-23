import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      /// If our width is more than 1100 we consider it a desktop
      if (constraints.maxWidth >= 1100) {
        return desktop;
      }
      /// If width is less than 1100 and greater than 650 we consider it a tablet
      else if (constraints.maxWidth >= 650) {
        return tablet;
      }
      else {
        return mobile;
      }
    });
  }
}
