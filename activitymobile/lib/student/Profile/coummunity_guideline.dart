import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors.dart';
class CommunityGuideLine extends StatefulWidget {
  const CommunityGuideLine({Key? key}) : super(key: key);

  @override
  _CommunityGuideLineState createState() => _CommunityGuideLineState();
}

class _CommunityGuideLineState extends State<CommunityGuideLine> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: SingleChildScrollView(

            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Community Guidelines",
                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 20,),
                  Image.asset("assets/guide.png"),
                  SizedBox(height: 20,),
                  Text(
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At",
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
          ),
          
        ));
  }
}
