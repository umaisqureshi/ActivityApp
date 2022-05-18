
import 'package:activitymobile/student/bottomnavbar.dart';
import 'package:activitymobile/student/create_account/register.dart';
import 'package:activitymobile/tutor/create_account_tutor/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../colors.dart';
import '../get_location.dart';


class LoginScreenTutor extends StatefulWidget {
  const LoginScreenTutor({Key? key}) : super(key: key);

  @override
  _LoginScreenTutorState createState() => _LoginScreenTutorState();
}

class _LoginScreenTutorState extends State<LoginScreenTutor> {
  bool isChange = false;
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 35, left: 17, right: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Log in",
                  style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: media.height * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 10, vertical: MediaQuery.of(context).size.height / 65),
                        child: Image.asset(
                          "assets/apple.png",
                          height: 37,
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 10, vertical: MediaQuery.of(context).size.height / 65),
                        child: Image.asset(
                          "assets/google.png",
                          height: 35,
                          width: 30,
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 10, vertical: MediaQuery.of(context).size.height / 65),
                        child: Image.asset(
                          "assets/facebook.png",
                          height: 37,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: media.height * 0.04,
                ),
                Center(
                  child: Text(
                    "OR LOGIN WITH EMAIL",
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: media.height * 0.04,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.alternate_email, color: Colors.black54),
                    fillColor: Colors.grey,
                    hintText: "Email",
                    hintStyle: GoogleFonts.poppins(fontSize: 12, color: Colors.black54),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      borderSide: BorderSide(color: Colors.black54),
                    ),
                    enabledBorder:
                        const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(7)), borderSide: BorderSide(color: Colors.black54)),
                    contentPadding: EdgeInsets.only(top: 35, bottom: 10, left: 10),
                  ),
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.vpn_key_rounded, color: Colors.black54),
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            isChange = !isChange;
                          });
                        },
                        child: Icon(isChange ? Icons.visibility_off : Icons.visibility, color: Colors.black54)),
                    fillColor: Colors.grey,
                    hintText: "Password",
                    hintStyle: GoogleFonts.poppins(fontSize: 12, color: Colors.black54),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      borderSide: BorderSide(color: Colors.black54),
                    ),
                    enabledBorder:
                        const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(7)), borderSide: BorderSide(color: Colors.black54)),
                    contentPadding: EdgeInsets.only(top: 35, bottom: 10, left: 10),
                  ),
                ),
                Text(
                  "Forget Password?",
                  style: GoogleFonts.poppins(fontSize: 12),
                ),
                SizedBox(
                  height: media.height * 0.04,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => GetLocation()));
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: cColor().yellow),
                    child: Center(
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => RegisterTutor()));
                    },
                    child: Text(

                      "Don't have account an account? SIGN UP here",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
