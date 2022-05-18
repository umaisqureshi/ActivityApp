import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../colors.dart';
class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                Text(
                  "4.2 ",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                Icon(Icons.star),
                Text(
                  " (14) ",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Image.asset("assets/floki.png",height: 50,width: 50,),
                          SizedBox(width: 10,),
                          Text(
                            "Floki",
                            style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "4.2 ",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                        Icon(Icons.star),

                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipis cing bore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud",
                    style: GoogleFonts.poppins(fontSize: 14),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Image.asset("assets/floki.png",height: 50,width: 50,),
                          SizedBox(width: 10,),
                          Text(
                            "Floki",
                            style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "4.2 ",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                        Icon(Icons.star),

                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipis cing bore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud",
                    style: GoogleFonts.poppins(fontSize: 14),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
