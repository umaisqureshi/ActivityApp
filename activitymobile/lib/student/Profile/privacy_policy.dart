import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
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
                "Privacy Policy",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20,),
              Image.asset("assets/terms.png"),
              SizedBox(height: 20,),
              Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At",
                style: GoogleFonts.poppins(fontSize: 12),
              )
            ],
          ),
        ),
      ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Decline",
                  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {


                  },
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: cColor().yellow),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15, left: 40, right: 40),
                      child: Row(
                        children: [
                          Text(
                            "Accept",
                            style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
    ));
  }
}
