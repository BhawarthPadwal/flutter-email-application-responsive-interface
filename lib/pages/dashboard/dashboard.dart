import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mail_app_responsive/widgets/details_widget.dart';
import 'package:mail_app_responsive/widgets/drawer_widget.dart';
import 'package:mail_app_responsive/widgets/email_widget.dart';

import '../../constants/ui_constants.dart';

class Dashboard extends StatefulWidget {
  static const String rootName = 'dashboard';
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  double drawerWidth = 200;
  double emailWidth = 350;
  bool isHovered1 = false;
  bool isHovered2 = false;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: blackColor,
      ),
      child: SafeArea(
        child: Scaffold(
          body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: drawerWidth,
                child: const DrawerWidget(),
              ),
              MouseRegion(
                onEnter: (_) {
                  setState(() {
                    isHovered1 = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    isHovered1 = false;
                  });
                },
                child: GestureDetector(
                  onHorizontalDragUpdate: (details) {
                    setState(() {
                      drawerWidth += details.delta.dx;
                    });
                  },
                  child: Container(
                    width: 20,
                    color: Colors.transparent,
                    child: Align(
                      alignment: Alignment.center,
                      child: Visibility(
                        visible: isHovered1,
                        child: const Icon(
                          Icons.drag_indicator,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: emailWidth,
                child: const EmailWidget(),
              ),
              MouseRegion(
                onEnter: (_) {
                  setState(() {
                    isHovered2 = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    isHovered2 = false;
                  });
                },
                child: GestureDetector(
                  onHorizontalDragUpdate: (details) {
                    setState(() {
                      emailWidth += details.delta.dx;
                    });
                  },
                  child: Container(
                    width: 20,
                    color: Colors.transparent,
                    child: Align(
                      alignment: Alignment.center,
                      child: Visibility(
                        visible: isHovered2,
                        child: const Icon(
                          Icons.drag_indicator,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Expanded(
                child: DetailsWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mail_app_responsive/widgets/details_widget.dart';
import 'package:mail_app_responsive/widgets/drawer_widget.dart';
import 'package:mail_app_responsive/widgets/email_widget.dart';

import '../../constants/ui_constants.dart';

class Dashboard extends StatefulWidget {
  static const String rootName = 'dashboard';
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  double drawerWidth = 200;
  double emailWidth = 300;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: blackColor,
      ),
      child: SafeArea(
        child: Scaffold(
          body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: drawerWidth,
                child: DrawerWidget(),
              ),
              GestureDetector(
                onHorizontalDragUpdate: (details) {
                  setState(() {
                    drawerWidth += details.delta.dx;
                  });
                },
                child: Container(
                  width: 20,
                  color: Colors.transparent,
                  child: const Icon(
                    Icons.drag_indicator,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: emailWidth,
                child: EmailWidget(),
              ),
              GestureDetector(
                onHorizontalDragUpdate: (details) {
                  setState(() {
                    emailWidth += details.delta.dx;
                  });
                },
                child: Container(
                  width: 20,
                  color: Colors.transparent,
                  child: const Icon(
                    Icons.drag_indicator,
                    color: Colors.grey,
                  ),
                ),
              ),
              Expanded(
                child: DetailsWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/


/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mail_app_responsive/widgets/details_widget.dart';
import 'package:mail_app_responsive/widgets/drawer_widget.dart';
import 'package:mail_app_responsive/widgets/email_widget.dart';

import '../../constants/ui_constants.dart';

class Dashboard extends StatefulWidget {
  static const String rootName = 'dashboard';
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: blackColor,
      ),
      child: SafeArea(
        child: Scaffold(
          body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 2, child: DrawerWidget()),
              Expanded(flex: 3, child: EmailWidget()),
              Expanded(flex: 5, child: DetailsWidget()),
            ],
          ),
        ),
      ),
    );
  }
}*/