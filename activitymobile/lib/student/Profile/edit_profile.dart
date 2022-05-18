import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  //Size media = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,top: 15,right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Edit Profile",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Center(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(radius: 70, backgroundColor: Colors.transparent, child: Image.asset("assets/profile.png")),
                        Positioned(
                          right: 0,
                          bottom: 25,
                          child: CircleAvatar(
                              backgroundColor: Color(0xffF1F0F0),
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.black,
                              )),
                        )
                      ],
                    ),
                    Text(
                      "Riyon Farsad",
                      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Student",
                      style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black54),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Account",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10,),
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
                        " Name",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                       Padding(
                         padding: const EdgeInsets.only(left: 25,right: 25),
                         child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            hintText: "Riyon Farsad",
                            hintStyle: GoogleFonts.poppins(fontSize: 14),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            contentPadding: EdgeInsets.only(left: 10)
                          ),
                      ),
                       ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
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
                        " Username",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25,right: 25),
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              hintText: "rayan_f001",
                              hintStyle: GoogleFonts.poppins(fontSize: 14),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              contentPadding: EdgeInsets.only(left: 10)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
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
                        padding: const EdgeInsets.only(left: 25,right: 25),
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              hintText: "riyonFarsad@gmail.com",
                              hintStyle: GoogleFonts.poppins(fontSize: 14),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              contentPadding: EdgeInsets.only(left: 10)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
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
                        " Gender",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25,right: 25),
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              hintText: "Male",
                              hintStyle: GoogleFonts.poppins(fontSize: 14),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              contentPadding: EdgeInsets.only(left: 10)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
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
                        " Date of Birth",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25,right: 25),
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              hintText: "29 Feb 2000",
                              hintStyle: GoogleFonts.poppins(fontSize: 14),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              contentPadding: EdgeInsets.only(left: 10)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12,),
              Text(
                "Contact",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10,),
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
                        " Street",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25,right: 25),
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              hintText: "Street Address, P.O Box, Company",
                              hintStyle: GoogleFonts.poppins(fontSize: 14),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              contentPadding: EdgeInsets.only(left: 10)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
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
                        " Apartment",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25,right: 25),
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              hintText: "Apartment, suite, unit, building, etc",
                              hintStyle: GoogleFonts.poppins(fontSize: 14),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              contentPadding: EdgeInsets.only(left: 10)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              /*Row(
                children: [
                  SizedBox(
                    width: 190,
                    child: Card(
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
                              " City",
                              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25,right: 25),
                              child: TextField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    hintText: "City Name",
                                    hintStyle: GoogleFonts.poppins(fontSize: 14),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                    contentPadding: EdgeInsets.only(left: 10)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 190,
                    child: Card(

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
                              " State",
                              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25,right: 25),
                              child: TextField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    hintText: "State Name",
                                    hintStyle: GoogleFonts.poppins(fontSize: 14),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                    contentPadding: EdgeInsets.only(left: 10)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),*/
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 165,
                    child: Card(
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
                              " City",
                              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: TextField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    hintText: "City Name",
                                    hintStyle: GoogleFonts.poppins(fontSize: 14),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                    contentPadding: EdgeInsets.only(left: 10)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 165,
                    child: Card(

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
                              " State",
                              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: TextField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    hintText: "State Name",
                                    hintStyle: GoogleFonts.poppins(fontSize: 14),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                    contentPadding: EdgeInsets.only(left: 10)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
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
                        " Zip/Postal Code",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25,right: 25),
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              hintText: "54xxx",
                              hintStyle: GoogleFonts.poppins(fontSize: 14),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              contentPadding: EdgeInsets.only(left: 10)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
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
                        " Contact Number",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25,right: 25),
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              hintText: "+92 333 4444 333",
                              hintStyle: GoogleFonts.poppins(fontSize: 14),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              contentPadding: EdgeInsets.only(left: 10)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: InkWell(
                  onTap: () {
                    /*Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ReferFriend()));*/
                  },
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: cColor().yellow),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15, left: 80, right: 80),
                      child: Text(
                        "Save",
                        style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
