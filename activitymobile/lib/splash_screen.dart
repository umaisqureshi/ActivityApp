import 'dart:async';

import 'package:activitymobile/colors.dart';
import 'package:activitymobile/student/Home/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'student/select_role_screen.dart';
import 'student/bottomnavbar.dart';
import 'student/create_account/login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {

      if(FirebaseAuth.instance.currentUser!= null){

        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => BottomNavBar()));

      }else{
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SelectRoleScreen()));
      }
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
        children: [
            Container(
                color: cColor().yellow,
                height: 520,
                child: Image.asset(
                  "assets/splash.png",
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: media.height*0.02,
            ),
            Text(
              "activity pack",
              style: GoogleFonts.poppins(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: media.height*0.02,
            ),
            Center(
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipis\ncing bore et dolore magna aliqua. Ut enim ad\nminim veniam quis nostrud exercitation ullamco ",
                style: GoogleFonts.poppins(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: media.height*0.04,
            ),
            /*InkWell(
              onTap: () {
                *//*Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Createaccount()));*//*
              },
              child: Container(
                decoration:
                    BoxDecoration( borderRadius: BorderRadius.circular(8), color: cColor().yellow),
                child: Padding(
                  padding: const EdgeInsets.only(top: 12,bottom: 12,left: 120,right: 120),
                  child: Text(
                    "Try For Free",
                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: media.height*0.02,
            ),
            Text(
              "Already have an account? Log in ",
              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
            ),*/
        ],
      ),
          )),
    );
  }
}
