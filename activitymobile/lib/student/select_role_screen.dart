import 'package:activitymobile/tutor/create_account_tutor/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';
import 'create_account/login.dart';

class SelectRoleScreen extends StatefulWidget {
  const SelectRoleScreen({Key? key}) : super(key: key);

  @override
  _SelectRoleScreenState createState() => _SelectRoleScreenState();
}

class _SelectRoleScreenState extends State<SelectRoleScreen> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Column(
            mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: media.width,
              height: media.height/1.7,
              color: cColor().yellow,
              child: Image.asset(
                "assets/splash.png",
                fit: BoxFit.cover,
              )),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "activity pack",
                  style: GoogleFonts.poppins(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Center(
                  child: Text(
                    "Let us know who are you",
                    style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
                        },
                        child: Container(
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(color: cColor().yellow, borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreenTutor()));
                        },
                        child: Container(
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: cColor().yellow,
                              ),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              "Partner Sign Up",
                              style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
