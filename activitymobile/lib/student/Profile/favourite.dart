import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Models/favourite_model.dart';

class Favourite extends StatefulWidget {
  final double? pin;
  const Favourite({Key? key, this.pin}) : super(key: key);

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  List<FavouriteModel> favouriteModel = [
    FavouriteModel(pic: "assets/bottom1.png", name: "Maoshe", distance: "10", num: "(14)", rating: "4.2", exercise: 'Stuart St Yoga'),
    FavouriteModel(pic: "assets/bottom1.png", name: "Maoshe", distance: "10", num: "(14)", rating: "4.2", exercise: 'Stuart St Yoga')
  ];

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          AnimatedContainer(height:widget.pin,duration: Duration(milliseconds: 100),),
          ...favouriteModel.map((e) => Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 12),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      e.pic,
                      height: 140,
                      width: 150,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e.name,
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),
                        Text(
                          e.exercise,
                          style: GoogleFonts.poppins(fontSize: 14),
                        ),
                        Row(
                          children: [
                            Text(
                              e.rating,
                              style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                            ),
                            Text(
                              e.num,
                              style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      e.distance + "km away from you",
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                    SizedBox(
                      width: media.width * 0.32,
                    ),
                    Text(
                      "View",
                      style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        )).toList()],
      ),
    );
  }
}
