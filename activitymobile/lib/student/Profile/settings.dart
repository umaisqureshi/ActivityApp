import 'package:activitymobile/student/Profile/privacy_policy.dart';
import 'package:activitymobile/student/Profile/terms_condition.dart';
import 'package:activitymobile/student/create_account/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_fonts/google_fonts.dart';
import '../select_role_screen.dart';
import 'change_password.dart';
import 'coummunity_guideline.dart';
import 'edit_profile.dart';
import 'email_us.dart';
import 'help_center.dart';
import 'languages.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            "Settings",
            style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Account",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10,),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Image.asset("assets/small.png"),
                          title: Text(
                            "Riyon Farsad",
                            style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 20,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditProfile()));

                            },
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "riyonFarsad@gmail.com",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "rayon_f001",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 2,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 20, top: 6, bottom: 6),
                    title: Text(
                      "Change Password",
                      style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChangePassword()));
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Preferences",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 5,),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 2,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 20, top: 6, bottom: 6),
                    title: Text(
                      "Languages",
                      style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Languages()));
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Support",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 2,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 20, top: 6, bottom: 6),
                    title: Text(
                      "Privacy Policy",
                      style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => PrivacyPolicy()));
                      },
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 2,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 20, top: 6, bottom: 6),
                    title: Text(
                      "Help Center",
                      style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HelpCenter()));
                      },
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 2,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 20, top: 6, bottom: 6),
                    title: Text(
                      "Terms and conditions",
                      style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => TermsCondition()));
                      },
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 2,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 20, top: 6, bottom: 6),
                    title: Text(
                      "Community guidelines",
                      style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => CommunityGuideLine()));
                      },
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 2,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 20, top: 6, bottom: 6),
                    title: Text(
                      "Email us",
                      style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => EmailUs()));
                      },
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Center(
                  child: InkWell(
                    onTap: () async {
                      if((await fb.isLoggedIn)){
                        await fb.logOut();
                      }
                      await FirebaseAuth.instance.signOut().then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SelectRoleScreen())));
                    },
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15, left: 60, right: 60),
                        child: Text(
                          "LOGOUT",
                          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
