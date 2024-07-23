import 'package:flutter/material.dart';
import 'package:mail_app_responsive/pages/dashboard/dashboard.dart';
import 'package:mail_app_responsive/pages/splash_screen/splash_screen.dart';
import 'package:mail_app_responsive/widgets/details_widget.dart';
import 'package:mail_app_responsive/widgets/email_widget.dart';
import 'package:page_transition/page_transition.dart';

class Routes {
  static Route<dynamic>? generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case SplashScreen.rootName:
        return getPageTransition(const SplashScreen(), setting);
      case Dashboard.rootName:
        return getPageTransition(const Dashboard(), setting);
      case EmailWidget.rootName:
        return getPageTransition(const EmailWidget(), setting);
      case DetailsWidget.rootName:
        return getPageTransition(const DetailsWidget(), setting);
      default:
        MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text("No route defined"),
            ),
          );
        });
    }
    return null;
  }

  static getPageTransition(dynamic screenName, RouteSettings setting) {
    return PageTransition(
        child: screenName,
        type: PageTransitionType.theme,
        alignment: Alignment.center,
        settings: setting,
        duration: const Duration(milliseconds: 2000),
        maintainStateData: true,
        curve: Curves.elasticInOut);
  }
}
