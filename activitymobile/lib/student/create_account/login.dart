
import 'dart:io';

import 'package:activitymobile/student/Home/home1.dart';
import 'package:activitymobile/student/Home/widget_replace.dart';
import 'package:activitymobile/student/Profile/all_membership_plans.dart';
import 'package:activitymobile/student/create_account/register.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';


import '../../colors.dart';
import '../bottomnavbar.dart';

import '../Home/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController emailController =
  TextEditingController();
  final TextEditingController passwordController =
  TextEditingController();

  login() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore db = FirebaseFirestore.instance;
    final String email = emailController.text;
    final String password = passwordController.text;

    try {
      final UserCredential user = await auth.signInWithEmailAndPassword(
          email: email, password: password);

      final DocumentSnapshot snapshot =
      await db.collection('users').doc(user.user!.uid).get();
      final data = snapshot.data();
      print('User is Logged In');

      Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomNavBar()));

    } on FirebaseAuthException catch (e) {

      showInSnackBar(e.message.toString());

      //print('userName:' +username);
    }
  }

  showInSnackBar(String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication googleAuth =
    await googleUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Platform.isAndroid? Container() :Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 10, vertical: MediaQuery.of(context).size.height / 65),
                        child: Image.asset(
                          "assets/apple.png",
                          height: 37,
                          width: 30,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        print("Sign In with Google is pressed");
                        signInWithGoogle().whenComplete(() => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                          return AllMemberShipPlans();
                        })));
                      },
                      child: Material(
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
                    ),
                    InkWell(
                      onTap: (){
                        print("Sign In with Facebook is pressed");
                        signInWithFacebook().whenComplete(() => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                          return AllMemberShipPlans();
                        })));
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 5,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width / 10, vertical: MediaQuery.of(context).size.height / 65),
                          child: Image.asset(
                            "assets/facebook.png",
                            height: 37,
                            width: 30,
                          ),
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
                  controller: emailController,
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
                  obscureText: isChange,
                  controller: passwordController,
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
                    login();
                    },

                    //Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomNavBar()));

                  child: Container(
                    height: 55,
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
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Register()));
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


signInWithFacebook() async {
  // Log in
  final res = await fb.logIn(permissions: [
    FacebookPermission.publicProfile,
    FacebookPermission.email,
  ]);

  // Check result status
  switch (res.status) {
    case FacebookLoginStatus.success:
    // The user is suceessfully logged in
    // Send access token to server for validation and auth
      final FacebookAccessToken? accessToken = res.accessToken;
      final AuthCredential authCredential = FacebookAuthProvider.credential(accessToken!.token);
      final result = await FirebaseAuth.instance.signInWithCredential(authCredential);


      // Get profile data from facebook for use in the app
      final profile = await fb.getUserProfile();
      print('Hello, ${profile!.name}! You ID: ${profile.userId}');

      // Get user profile image url
      final imageUrl = await fb.getProfileImageUrl(width: 100);
      print('Your profile image: $imageUrl');

      // fetch user email
      final email = await fb.getUserEmail();
      // But user can decline permission
      if (email != null) print('And your email is $email');

      break;

    case FacebookLoginStatus.cancel:
    // In case the user cancels the login process
      break;
    case FacebookLoginStatus.error:
    // Login procedure failed
      print('Error while log in: ${res.error}');
      print('Login Failed');
      break;
  }
}