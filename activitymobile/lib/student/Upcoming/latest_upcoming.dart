import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LatestUpcoming extends StatefulWidget {
  const LatestUpcoming({Key? key}) : super(key: key);

  @override
  _LatestUpcomingState createState() => _LatestUpcomingState();
}

class _LatestUpcomingState extends State<LatestUpcoming> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Upcoming",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Text(
                  "History",
                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey),
                ),
              ],
            ),
            Row(

              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "04:00",
                      style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700,color: Colors.grey),
                    ),
                    Text(
                      "pm",
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
                    ),

                  ],
                ),
                Image.asset("assets/exercide.png"),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
