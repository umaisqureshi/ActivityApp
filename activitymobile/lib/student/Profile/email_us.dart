import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors.dart';

class EmailUs extends StatefulWidget {
  const EmailUs({Key? key}) : super(key: key);

  @override
  _EmailUsState createState() => _EmailUsState();
}

class _EmailUsState extends State<EmailUs> {
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
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email Us",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset("assets/email.png"),
                Text(
                  "How can we help you?",
                  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " Email",
                          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                hintText: "you@example.com",
                                hintStyle: GoogleFonts.poppins(fontSize: 14),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                contentPadding: EdgeInsets.only(left: 10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " Subject",
                          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                hintText: "Let us know the reason for your request",
                                hintStyle: GoogleFonts.poppins(fontSize: 14),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                contentPadding: EdgeInsets.only(left: 10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " Description",
                          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                hintText: "Please enter your details here",
                                hintStyle: GoogleFonts.poppins(fontSize: 14),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                contentPadding: EdgeInsets.only(left: 10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: cColor().yellow),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 45,right: 45,top: 15,bottom: 15),
                        child: Text(
                          "SEND",
                          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
