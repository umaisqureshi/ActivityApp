import 'package:activitymobile/student/Profile/notifications.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors.dart';
import 'main_screen.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Notifications()));
            },
            icon: Icon(
              Icons.notifications_active_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello",
            style: GoogleFonts.poppins(fontSize: 29),
          ),
          Text(
            "Lester",
            style: GoogleFonts.poppins(fontSize: 29, fontWeight: FontWeight.bold),
          ),
          Text(
            "Try to get something on your calender",
            style: GoogleFonts.poppins(fontSize: 14),
          ),
          Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: cColor().yellow),
                child: Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60, top: 20, bottom: 20),
                  child: Text(
                    "OPEN MAP",
                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Text(
            "How It Works",
            style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
          )
        ],
      ),
    ));
  }
}
