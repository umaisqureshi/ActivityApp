import 'package:activitymobile/student/Profile/notifications.dart';
import 'package:activitymobile/tutor/Manage/TabBars/students.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../notification.dart';
import 'TabBars/notify.dart';
import 'TabBars/reviews.dart';


class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Notifications()));
                  },
                  icon: Icon(Icons.notifications_active_outlined))
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(child: Image.asset("assets/latest.png")),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "barre3",
                          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "2 Credits",
                          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "4.2 ",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                        Icon(Icons.star),
                        Text(
                          " (14) ",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Elava Valley Yoga",
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Fri, Oct 15",
                              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "08:00 PM - 09:00 PM",
                              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: Color(0xffFADA6C))),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15, bottom: 15, left: 32, right: 32),
                              child: Text(
                                "Reschedule",
                                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipis cing bore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco ",
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xffFADA6C)),
                        child: Center(
                          child: Text(
                            "Edit Info",
                            style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TabBar(
                        indicatorColor: Color(0xffFADA6C),
                        unselectedLabelColor: Colors.black54,
                        labelColor: Colors.black,
                        indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: Color(0xffFADA6C),
                            ),
                            insets: EdgeInsets.symmetric(horizontal: 50.0)),
                        tabs: [
                          Tab(
                              child: Text(
                            "Reviews",
                            style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                          )),
                          Tab(
                              child: Text(
                            "Notify ",
                            style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                          )),
                          Tab(
                              child: Text(
                            "Students",
                            style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                          )),
                        ]),
                    Expanded(
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [Review(), Notify(), Student()],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
