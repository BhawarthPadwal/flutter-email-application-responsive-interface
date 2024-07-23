import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mail_app_responsive/pages/dashboard/dashboard_models/email_group_dashboard.dart';
import 'package:mail_app_responsive/responsive/responsive.dart';
import '../constants/ui_constants.dart';
import '../pages/dashboard/dashboard_models/email_model_dashboard.dart';

List<EmailModel> containList = [
  EmailModel(icon: Icons.inbox, title: 'Inbox'),
  EmailModel(icon: Icons.star_border, title: 'Starred'),
  EmailModel(icon: Icons.drafts_outlined, title: 'Drafts'),
  EmailModel(icon: Icons.restore_from_trash_outlined, title: 'Trash'),
  EmailModel(icon: Icons.archive_outlined, title: 'Archive'),
  EmailModel(icon: Icons.settings, title: 'Settings'),
];

List<EmailGroupDashboard> emailGroupsContents = [
  EmailGroupDashboard(imageUrl: 'assets/icons/ic_blue_ring.png', title: 'Work'),
  EmailGroupDashboard(
      imageUrl: 'assets/icons/ic_peach_ring.png', title: 'Family'),
  EmailGroupDashboard(
      imageUrl: 'assets/icons/ic_light_blue_ring.png', title: 'Friends'),
  EmailGroupDashboard(
      imageUrl: 'assets/icons/ic_light_red_ring.png', title: 'Clients'),
];

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});
  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  int selectedOptionsIndex = 0;
  int selectedGroupIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnnotatedRegion(
        value: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          statusBarColor: whiteColor,
        ),
        child: Scaffold(
          backgroundColor: whiteColor,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/icons/ic_mail.png', height: 35, width: 35),
                        const Spacer(),
                        if (!Responsive.isDesktop(context)) const CloseButton(),
                      ],
                    ),
                    heightBox(padding20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('New Message')));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: Colors.pink,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(padding8),
                          child: Text(
                            'New Message',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                    heightBox(padding20),
                    dashboardMenu(),
                    heightBox(padding20),
                    emailGroups(),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
  }

  Widget dashboardMenu() {
    return SizedBox(
      height: 350, // Ensure the height is reasonable for the content
      child: ListView.builder(
        itemCount: containList.length,
        itemBuilder: (context, index) {
          final isSelected = selectedOptionsIndex == index;
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(12),
                /*border: Border.all(
                  color: isSelected ? greyColor : whiteColor,
                  width: 2
                ),*/
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedOptionsIndex = index;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      containList[index].icon,
                      color: isSelected ? blackColor : greyColor,
                    ),
                    widthBox(padding12),
                    Expanded(
                      child: Text(
                        containList[index].title,
                        style: kCustomTextStyle(isSelected ? blackColor : greyColor, padding14, false),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget emailGroups() {
    return SizedBox(
      height: 250, // Ensure the height is reasonable for the content
      child: ListView.builder(
        itemCount: emailGroupsContents.length,
        itemBuilder: (context, index) {
          final isSelected = selectedGroupIndex == index;
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(12),
                /*border: Border.all(
                    color: isSelected ? greyColor : whiteColor,
                    width: 2
                ),*/
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedGroupIndex = index;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      emailGroupsContents[index].imageUrl,
                      height: 20,
                      width: 20,
                    ),
                    widthBox(padding12),
                    Expanded(
                      child: Text(
                        emailGroupsContents[index].title,
                        style: kCustomTextStyle(isSelected ? blackColor : greyColor, padding14, false),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
