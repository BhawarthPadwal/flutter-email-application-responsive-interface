import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mail_app_responsive/responsive/responsive.dart';
import 'package:mail_app_responsive/widgets/email_widget.dart';

import '../constants/ui_constants.dart';

class DetailsWidget extends StatefulWidget {
  static const String rootName = 'emailDetails';

  const DetailsWidget({super.key});

  @override
  State<DetailsWidget> createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: whiteColor,
      ),
      child: Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: padding20, vertical: padding40),
                      child: Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(padding12),
                                ),
                              ),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: padding10),
                                child: Text(
                                  'Load more emails',
                                  style: kCustomTextStyle(
                                      blackColor, padding14, false),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: padding20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (Responsive.isMobile(context))
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back,
                                  color: greyDarkColor,
                                  size: padding20,
                                )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.archive_sharp,
                                color: greyDarkColor,
                                size: padding20,
                              )),
                          /*IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.warning_sharp,
                                color: greyDarkColor,
                                size: padding20,
                              )),*/
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.delete_sharp,
                                color: greyDarkColor,
                                size: padding20,
                              )),
                          /*const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.email,
                                color: greyDarkColor,
                                size: padding20,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.access_time_filled_sharp,
                                color: greyDarkColor,
                                size: padding20,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.check_circle,
                                color: greyDarkColor,
                                size: padding20,
                              )),*/
                          /*const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.drive_folder_upload_rounded,
                                color: greyDarkColor,
                                size: padding20,
                              )),*/
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.bookmark_added,
                                color: greyDarkColor,
                                size: padding20,
                              )),
                          if (!Responsive.isMobile(context))
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.menu,
                                  color: greyDarkColor,
                                  size: padding20,
                                )),
                          const Spacer(),
                          Row(
                            children: [
                              Text(
                                '8',
                                style: kCustomTextStyle(
                                    greyDarkColor, padding14, false),
                              ),
                              Text(
                                ' of  ',
                                style: kCustomTextStyle(
                                    greyDarkColor, padding14, false),
                              ),
                              Text(
                                '250',
                                style: kCustomTextStyle(
                                    greyDarkColor, padding14, false),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.keyboard_arrow_left,
                                  color: greyDarkColor)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.keyboard_arrow_right,
                                  color: greyDarkColor)),
                        ],
                      ),
                    ),
                    emailDescription(),
                  ],
                ),
              ),
              Positioned(
                  right: 50,
                  bottom: 10,
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(padding12),
                          color: whiteColor,
                          boxShadow: const [
                            BoxShadow(
                              color: greyDarkColor,
                              blurRadius: 4.0,
                              offset: Offset(2, 2),
                              // changes position of shadow
                              spreadRadius: 1.0, // adds more depth
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.star,
                          color: greyDarkColor,
                          size: padding20,
                        ),
                      ),
                      widthBox(padding10),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(padding12),
                          color: whiteColor,
                          boxShadow: const [
                            BoxShadow(
                              color: greyDarkColor,
                              blurRadius: 4.0,
                              offset: Offset(2, 2),
                              // changes position of shadow
                              spreadRadius: 1.0, // adds more depth
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.share,
                          color: greyDarkColor,
                          size: padding20,
                        ),
                      ),
                      widthBox(padding10),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(padding12),
                          color: whiteColor,
                          boxShadow: const [
                            BoxShadow(
                              color: greyDarkColor,
                              blurRadius: 4.0,
                              offset: Offset(2, 2),
                              // changes position of shadow
                              spreadRadius: 1.0, // adds more depth
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.bookmark_sharp,
                          color: greyDarkColor,
                          size: padding20,
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  emailDescription() {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(
            left: padding30, right: padding30, top: padding40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Steve Smith to Joe Root',
                        style: kCustomTextStyle(blackColor, padding14, false),
                      ),
                      heightBox(padding20),
                      Text(
                        'Exciting Updates! New Features Coming Soon and Next Steps',
                        style: kCustomTextStyle(blackColor, padding20, true),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Jul 19, 2024, 12.55 PM',
                          style: kCustomTextStyle(greyColor, padding14, false),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(padding5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              'assets/images/profile.jpg',
                              height: 50,
                              width: 50,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: padding40),
              child: Text(
                'Hello sir,\nWe are excited to announce that several new features will be rolled out next week. These updates aim to enhance user experience and streamline our processes. Please review the attached document for details and prepare any questions for our upcoming meeting.John D. Whitney (July 19, 1850 – November 27, 1917) was an American Catholic priest who was the president of Georgetown University from 1898 to 1901. Born in Massachusetts, he joined the United States Navy at the age of sixteen. He became a Jesuit in 1872 and spent the next twenty-five years studying and teaching mathematics at Jesuit institutions in Canada, England, Ireland, and the United States. He became the vice president of Spring Hill College in Alabama before becoming the president of Georgetown. He oversaw the completion of Gaston Hall, the construction of the entrances to Healy Hall, and the establishment of Georgetown University Hospital and what would become the School of Dentistry. Afterwards, Whitney became the treasurer of Boston College and then engaged in pastoral work in Philadelphia, Brooklyn, and Baltimore, where he became the prefect of St. Ignatius Church. (This article is part of a featured topic: Presidents of Georgetown University.)John D. Whitney (July 19, 1850 – November 27, 1917) was an American Catholic priest who was the president of Georgetown University from 1898 to 1901. Born in Massachusetts, he joined the United States Navy at the age of sixteen.)',
                style: kCustomTextStyle(greyColor, padding14, false),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
