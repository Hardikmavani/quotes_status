import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotes_status/core/utils/color_constants.dart';
import 'package:quotes_status/core/utils/common_string.dart';
import 'package:quotes_status/widgets/custom_image_view.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  List<Widget> title = [
    Text(
      CommonString.vQuotesAboutLife,
      style: GoogleFonts.lindenHill(
          textStyle: TextStyle(fontSize: 18.5, color: ColorConstant.white)),
    ),
    Text(
      CommonString.vQuotesForInspiration,
      style: GoogleFonts.lindenHill(
          textStyle: TextStyle(fontSize: 18.5, color: ColorConstant.white)),
    ),
    Text(
      CommonString.vFullyCustomizableWithBeautifulImages,
      style: GoogleFonts.lindenHill(
          textStyle: TextStyle(fontSize: 18.5, color: ColorConstant.white)),
    ),
    Text(
      CommonString.vSetRemiders,
      style: GoogleFonts.lindenHill(
          textStyle: TextStyle(fontSize: 18.5, color: ColorConstant.white)),
    ),
  ];

  List<Widget> description = [
    Text(
      textAlign: TextAlign.center,
      CommonString.vGoalLife,
      style: GoogleFonts.itim(
          textStyle: TextStyle(fontSize: 15, color: ColorConstant.white)),
    ),
    Text(
      textAlign: TextAlign.center,
      CommonString.vQuotesWonderful,
      style: GoogleFonts.itim(
          textStyle: TextStyle(fontSize: 15, color: ColorConstant.white)),
    ),
    Text(
      textAlign: TextAlign.center,
      CommonString.vQuotesBackground,
      style: GoogleFonts.itim(
          textStyle: TextStyle(fontSize: 15, color: ColorConstant.white)),
    ),
    Text(
      textAlign: TextAlign.center,
      CommonString.vSetFamily,
      style: GoogleFonts.itim(
          textStyle: TextStyle(fontSize: 15, color: ColorConstant.white)),
    ),
  ];

  List<Widget> items = [
    // CustomImageView(
    //     svgPath: CommonString.imgMentionRafiki,
    //     margin: const EdgeInsets.all(80)),
    // CustomImageView(
    //     svgPath: CommonString.imgMentionPana, margin: const EdgeInsets.all(80)),
    // CustomImageView(
    //     svgPath: CommonString.imgMentionAmico,
    //     margin: const EdgeInsets.all(80)),
    // CustomImageView(
    //     svgPath: CommonString.imgMentionCuate,
    //     margin: const EdgeInsets.all(80)),

    CustomImageView(
        imagePath: CommonString.imgMentionRafiki,
        margin: const EdgeInsets.all(80)),
    CustomImageView(
        imagePath: CommonString.imgMentionPana,
        margin: const EdgeInsets.all(80)),
    CustomImageView(
        imagePath: CommonString.imgMentionAmico,
        margin: const EdgeInsets.all(80)),
    CustomImageView(
        imagePath: CommonString.imgMentionCuate,
        margin: const EdgeInsets.all(80)),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final dHeight = MediaQuery.of(context).size.height;
    final dWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(
            CommonString.imgTexturedMulberry,
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: ColorConstant.backgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                CarouselSlider(
                  items: title,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: dHeight * 0.04),
                  height: dHeight * 0.78,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(CommonString.imgBrownBg),
                  )),
                  child: Column(
                    children: [
                      CarouselSlider(
                        items: items,
                        options: CarouselOptions(
                          height: dHeight * 0.5,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                      ),
                      CarouselSlider(
                        items: description,
                        options: CarouselOptions(
                          enlargeCenterPage: true,
                          autoPlay: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: items.map((item) {
            //       int index = items.indexOf(item);
            //       return Container(
            //         width: dWidth * 0.08,
            //         height: dHeight * 0.08,
            //         margin: const EdgeInsets.symmetric(horizontal: 2.0),
            //         decoration: BoxDecoration(
            //           shape: BoxShape.circle,
            //           color: currentIndex == index ? Colors.blue : Colors.grey,
            //         ),
            //       );
            //     }).toList()),

            // Stack(
            //   children: [
            //     Center(
            //       child: Padding(
            //         padding: EdgeInsets.only(top: dHeight * 0.08),
            //         child: Text(
            //           CommonString.vQuotesAboutLife,
            //           style: GoogleFonts.lindenHill(
            //             textStyle:
            //                 TextStyle(color: ColorConstant.white, fontSize: 25),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
