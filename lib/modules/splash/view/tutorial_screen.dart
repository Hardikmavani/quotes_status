import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quotes_status/core/utils/color_constants.dart';
import 'package:quotes_status/core/utils/common_string.dart';
import 'package:quotes_status/widgets/custom_image_view.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
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
      // margin: const EdgeInsets.all(80)
    ),
    CustomImageView(
      imagePath: CommonString.imgMentionPana,
      // margin: const EdgeInsets.all(80)
    ),
    CustomImageView(
      imagePath: CommonString.imgMentionAmico,
      // margin: const EdgeInsets.all(80)
    ),
    CustomImageView(
      imagePath: CommonString.imgMentionCuate,
      // margin: const EdgeInsets.all(80)
    ),
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
                Container(
                  margin: EdgeInsets.only(top: dHeight * 0.05),
                  height: dHeight * 0.78,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(CommonString.imgBrownBg),
                  )),
                  child: CarouselSlider(
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
                )
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
