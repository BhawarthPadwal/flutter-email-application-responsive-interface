import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mail_app_responsive/constants/ui_constants.dart';
import 'package:mail_app_responsive/pages/dashboard/dashboard.dart';

class SplashScreen extends StatefulWidget {
  static const String rootName = 'splashScreen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initialization() {
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, Dashboard.rootName);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    initialization();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: whiteColor,
      ),
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: const AssetImage('assets/icons/ic_mail.png'),
                  height: size.height * 0.1,
                  width: size.width * 0.1,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Mailed it!',
                  style: TextStyle(
                      fontFamily: 'Kanit', fontSize: 14, color: logoBlue),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
