import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home/carosel_model.dart';

class VerticalSlider extends StatefulWidget {
  @override
  _VerticalSliderState createState() => _VerticalSliderState();
}

class _VerticalSliderState extends State<VerticalSlider> {
  List<CaresolModel> imgList = [
    CaresolModel(pic: "assets/g1.png",title: "Search For Classes"),
    CaresolModel(pic: "assets/g2.png",title: "Book Your Spot"),
    CaresolModel(pic: "assets/g3.png",title: "Make New Friends And Excel Together")

    ];
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CarouselSlider(
          options: CarouselOptions(
              disableCenter: true,
              viewportFraction: .85,
              aspectRatio: 1,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              autoPlay: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
          items: imgList
              .map((e) => Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
                child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Container(
                            width: size.width,
                            height: 500,
                            decoration: BoxDecoration(color: const Color(0xffF8CA2E).withOpacity(0.6), borderRadius: BorderRadius.circular(20)),
                            child: Image.asset(e.pic)),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                              color: Colors.white,
                            ),
                            height: 50,
                            width: size.width*0.77,
                            child: Center(child: Text(e.title, style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),)),
                          ),
                        ),
                      ],
                    ),
              )
          )
              .toList(),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.map((url) {
            int index = imgList.indexOf(url);
            return Container(
              width: 15.0,
              height: 3.0,
              margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: _current == index ? Colors.black : const Color.fromRGBO(0, 0, 0, 0.4),
                borderRadius: BorderRadius.circular(15)
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
