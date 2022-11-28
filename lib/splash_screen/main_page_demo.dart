import 'package:carousel_slider/carousel_slider.dart';
import 'package:day_27_add_cart/colors/mycolor.dart';
import 'package:day_27_add_cart/home_page.dart';
import 'package:day_27_add_cart/item_category/item_category_page.dart';
import 'package:day_27_add_cart/splash_screen/page1_demo.dart';
import 'package:day_27_add_cart/splash_screen/page2_demo.dart';
import 'package:day_27_add_cart/splash_screen/page3_demo.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPageDemo extends StatefulWidget {
  const MainPageDemo({Key? key}) : super(key: key);
  @override
  State<MainPageDemo> createState() => _MainPageDemoState();
}

class _MainPageDemoState extends State<MainPageDemo> {
  int activeIndex = 0;
  List<Widget> pages = [Page1Demo(), Page2Demo(), Page3Demo()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        CarouselSlider(
            items: pages,
            options: CarouselOptions(
                initialPage: 0,
                height: double.infinity,
                autoPlay: true,
                reverse: false,
                autoPlayInterval: Duration(seconds: 2),
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                })),
        Column(
          children: [
            Expanded(flex: 6, child: Container()),
            Expanded(
                flex: 6,
                child: Container(
                  height: double.infinity,
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                          child: Container(
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Grab your',
                              style: GoogleFonts.anton(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35,
                                  color: whiteContainerClr,
                                  letterSpacing: 3),
                            ),
                            Text(
                              'Delicious food !',
                              style: GoogleFonts.anton(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35,
                                  color: whiteContainerClr,
                                  letterSpacing: 3),
                            ),
                            Text(
                              'Delivery food in your phone',
                              style: myStyle(
                                  20, FontWeight.normal, whiteContainerClr),
                            ),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  buildIndicator(),
                                ],
                              ),
                          ],
                        ),
                      )),
                     Expanded(
                         flex: 1,
                         child: Container(
                           child: Column(
                             children: [
                               Expanded(flex: 1,child: Container()),
                               Expanded(flex: 1,child: GestureDetector(
                                 onTap: (){
                                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ItemCategoryPage()));
                                 },
                                 child: Container(
                                   alignment: Alignment.center,
                                   width: double.infinity,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(15),
                                       color: borderClr
                                   ),
                                   child: Text('Get Started', style: myStyle(18, FontWeight.bold, whiteContainerClr),),
                                 ),
                               ),)
                             ],
                           ),
                         )
                     ),
                    ],
                  ),
                )),
          ],
        ),
      ]),
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
        effect: ExpandingDotsEffect(
            dotHeight: 6,
            dotWidth: 20,
            dotColor: textClr2,
            activeDotColor: whiteContainerClr),
        activeIndex: activeIndex,
        count: pages.length);
  }
}
