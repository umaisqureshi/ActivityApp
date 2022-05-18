import 'package:activitymobile/student/Home/main_screen.dart';
import 'package:activitymobile/student/bottomnavbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../colors.dart';
import '../carosal_sliders.dart';
import 'createClass/create_class.dart';
import 'home.dart';

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> with ChangeNotifier {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: Icon(
              Icons.notifications_active_outlined,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*Text(
                "Hello",
                style: GoogleFonts.poppins(fontSize: 29),
              ),
              Text(
                "Laoshe",
                style: GoogleFonts.poppins(fontSize: 29, fontWeight: FontWeight.bold),
              ),
              Text(
                "Try to get something on your calender",
                style: GoogleFonts.poppins(fontSize: 14),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    calNotifier.value = true;
                    calNotifier.notifyListeners();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TutorHome()));
                    //save to pref
                  },
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: cColor().yellow),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15, left: 40, right: 40),
                      child: Text(
                        "GO TO CALENDAR",
                        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),*/
              SizedBox(
                height: 10,
              ),
              Text(
                "How It Works",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Don’t worry if you have no one to do things with or your friends aren’t interested in what you want to do. ",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Image.asset(
                "assets/sad.png",
                height: 230,
                width: 230,
              )),
              SizedBox(
                height: 10,
              ),
              Text(
                "Activity Pack serves as the in-between, book super fun activities, events, experiences, and classes all  in one app with one membership.",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              VerticalSlider(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Don’t sit around wanting to do things, get out there and enjoy! It’s a great way to be social, make new friends and learn new skills.",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Image.asset(
                "assets/clap.png",
                height: 230,
                width: 230,
              )),
              SizedBox(
                height: 10,
              ),
              Text(
                "What You Will Get With Us",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 6,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.black),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Choose the membership that you would like",
                    style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 6,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.black),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Search through 100s of fun experiences and \nclasses",
                    style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 6,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.black),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Use your credits to book the ones you want",
                    style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 6,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.black),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Enjoy the experience",
                    style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 6,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.black),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Then do it all over again",
                    style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 6,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.black),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "You can add more credits if needed",
                    style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
