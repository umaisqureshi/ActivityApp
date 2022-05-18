import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors.dart';
class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
          padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Change Password",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Center(child: Image.asset("assets/password.png", height: 350,width: 350,)),
              SizedBox(height: 35,),
              TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key_rounded, color: Colors.black54),
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.black54),

                  hintText: "Old Password",
                  hintStyle: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  enabledBorder:
                  const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)), borderSide: BorderSide(color: Colors.black54)),
                  contentPadding: EdgeInsets.only(top: 35, bottom: 10, left: 10),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key_rounded, color: Colors.black54),
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.black54),

                  hintText: "New Password",
                  hintStyle: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  enabledBorder:
                  const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)), borderSide: BorderSide(color: Colors.black54)),
                  contentPadding: EdgeInsets.only(top: 35, bottom: 10, left: 10),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key_rounded, color: Colors.black54),
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.black54),

                  hintText: "Confirm Password",
                  hintStyle: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  enabledBorder:
                  const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)), borderSide: BorderSide(color: Colors.black54)),
                  contentPadding: EdgeInsets.only(top: 35, bottom: 10, left: 10),
                ),
              ),
              SizedBox(height: 30,),
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
              SizedBox(height: 15,)
            ],
          ),
        ),
      ),
    );
  }
}
