import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: blackColor,
      ),
      child: Scaffold(
        backgroundColor: greyBg,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: padding20, vertical: padding40),
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
              widthBox(padding10),
              Expanded(child: emailsList()),
              widthBox(padding10),
            ],
          ),
        ),
      ),
    );
  }

  emailsList() {
    return ListView.builder(
        itemCount: emailContent.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding20, vertical: padding10),
            child: Container(
              height: 80,
              padding: const EdgeInsets.all(padding10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(padding12),
                  color: whiteColor),
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
                          padding: const EdgeInsets.symmetric(horizontal: padding5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                emailContent[index].subject,
                                style: kCustomTextStyle(blackColor, padding12, false),
                              ),
                              Text(
                                emailContent[index].senderName,
                                style:
                                    kCustomTextStyle(greyDarkColor, padding12, false),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          emailContent[index].time,
                          style: kCustomTextStyle(greyDarkColor, padding12, false),
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
          );
        });
  }
}
