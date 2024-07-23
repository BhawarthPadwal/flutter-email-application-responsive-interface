import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mail_app_responsive/responsive/responsive.dart';
import 'package:mail_app_responsive/widgets/details_widget.dart';
import 'package:mail_app_responsive/widgets/drawer_widget.dart';

import '../constants/ui_constants.dart';
import '../pages/dashboard/dashboard_models/email_details.dart';

String description =
    "Hello sir, We are excited to announce that several new features will be rolled out next week. These updates aim to enhance user experience and streamline our processes. Please review the attached document for details and prepare any questions for our upcoming meeting.";
String subject = "Exciting Updates! New Features Coming Soon and Next Steps";

List<EmailDetails> emailContent = [
  EmailDetails(
      subject: subject,
      senderName: 'Carlos Alcaraz',
      description: description,
      imageUrl: 'assets/images/profile.jpg',
      time: '59min ago'),
  EmailDetails(
      subject: subject,
      senderName: 'Carlos Alcaraz',
      description: description,
      imageUrl: 'assets/images/profile.jpg',
      time: '2min ago'),
  EmailDetails(
      subject: subject,
      senderName: 'Carlos Alcaraz',
      description: description,
      imageUrl: 'assets/images/profile.jpg',
      time: '2min ago'),
  EmailDetails(
      subject: subject,
      senderName: 'Carlos Alcaraz',
      description: description,
      imageUrl: 'assets/images/profile.jpg',
      time: '2min ago'),
  EmailDetails(
      subject: subject,
      senderName: 'Carlos Alcaraz',
      description: description,
      imageUrl: 'assets/images/profile.jpg',
      time: '2min ago'),
  EmailDetails(
      subject: subject,
      senderName: 'Carlos Alcaraz',
      description: description,
      imageUrl: 'assets/images/profile.jpg',
      time: '2min ago'),
  EmailDetails(
      subject: subject,
      senderName: 'Carlos Alcaraz',
      description: description,
      imageUrl: 'assets/images/profile.jpg',
      time: '2min ago'),
  EmailDetails(
      subject: subject,
      senderName: 'Carlos Alcaraz',
      description: description,
      imageUrl: 'assets/images/profile.jpg',
      time: '2min ago'),
];

class EmailWidget extends StatefulWidget {
  static const String rootName = 'emailWidget';

  const EmailWidget({super.key});

  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: greyBg,
      ),
      child: Scaffold(
        key: _scaffoldState,
        drawer: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 250,
            ),
            child: const DrawerWidget()),
        backgroundColor: greyBg,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: padding20, right: padding20, top: padding40, bottom: padding20),
                child: Row(
                  children: [
                    if (!Responsive.isDesktop(context))
                      IconButton(
                          onPressed: () {
                            _scaffoldState.currentState?.openDrawer();
                          },
                          icon: const Icon(
                            Icons.menu,
                            color: greyColor,
                          )),
                    if (!Responsive.isDesktop(context)) widthBox(padding5),
                    Expanded(
                      child: TextField(
                        style: kCustomTextStyle(blackColor, padding14, false),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: padding10, vertical: padding5),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(padding12),
                              borderSide: BorderSide.none),
                          hintText: 'Search',
                          hintStyle:
                              kCustomTextStyle(greyDarkColor, padding14, false),
                          isDense: true,
                          suffixIcon: const Icon(Icons.search_sharp),
                          suffixIconColor: greyDarkColor,
                          filled: true,
                          fillColor: lightGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              widthBox(padding10),
              Expanded(child: emailsList(context)),
              widthBox(padding10),
            ],
          ),
        ),
      ),
    );
  }

  emailsList(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return ListView.builder(
        itemCount: emailContent.length,
        itemBuilder: (context, index) {
          bool isSelected = selectedIndex == index;
          return Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: padding20, vertical: padding10),
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
                if (isMobile) {
                  Navigator.pushNamed(context, DetailsWidget.rootName);
                }
              },
              child: Container(
                padding: const EdgeInsets.all(padding10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(padding12),
                    color: isSelected ? (isMobile ? whiteColor : logoBlue) : whiteColor),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(padding5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset(
                                emailContent[index].imageUrl,
                                height: 50,
                                width: 50,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: padding5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  emailContent[index].subject,
                                  style: kCustomTextStyle(
                                      isSelected ? (isMobile ? blackColor : whiteColor) : blackColor, padding12, false),
                                ),
                                Text(
                                  emailContent[index].senderName,
                                  style: kCustomTextStyle(
                                      isSelected ? (isMobile ? greyDarkColor : whiteColor): greyDarkColor, padding12, false),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            emailContent[index].time,
                            style:
                                kCustomTextStyle(isSelected ? (isMobile ? greyDarkColor : whiteColor) : greyDarkColor, padding12, false),
                          ),
                        )
                      ],
                    ),
                    /*heightBox(padding10),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(padding5),
                        child: Text(
                          emailContent[index].description,
                          style: kCustomTextStyle(blackColor, padding12, false),
                        ),
                      ),
                    )*/
                  ],
                ),
              ),
            ),
          );
        });
  }
}
