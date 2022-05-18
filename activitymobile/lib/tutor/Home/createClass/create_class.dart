import 'package:activitymobile/tutor/Home/home_tab_bar/cancel.dart';
import 'package:activitymobile/tutor/Home/home_tab_bar/date_time.dart';
import 'package:activitymobile/tutor/Home/home_tab_bar/description.dart';
import 'package:activitymobile/tutor/Home/home_tab_bar/email.dart';
import 'package:activitymobile/tutor/Home/home_tab_bar/overview.dart';
import 'package:activitymobile/tutor/Home/home_tab_bar/photos.dart';
import 'package:activitymobile/tutor/Home/home_tab_bar/safety.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../colors.dart';

class CreateClass extends StatefulWidget {
  const CreateClass({Key? key}) : super(key: key);

  @override
  _CreateClassState createState() => _CreateClassState();
}

class _CreateClassState extends State<CreateClass> with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 7, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_active_outlined),
            )
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
            isScrollable: true,
            controller: _controller,
            indicator: BoxDecoration(color: Color(0xffFBE496), borderRadius: BorderRadius.circular(25)),
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.black54,
            labelColor: Colors.black,
            tabs: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Overview",
                    style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Description",
                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Photos",
                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Auto Email Remainder",
                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Safety Guidelines",
                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Cancellation Policy",
                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Dates and Times",
                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [Overview(), Description(), Photos(), Email(), Safety(), Cancel(), DateTimess()],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Save as Draft",
                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              InkWell(
                onTap: () {
                  _controller.animateTo(_selectedIndex += 1);

                },
                child: _selectedIndex==6? Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: cColor().yellow),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15, left: 30, right: 30),
                    child: Row(
                      children: [
                        Text(
                          "Done",
                          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Icon(Icons.check)
                      ],
                    ),
                  ),
                ):Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: cColor().yellow),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15, left: 30, right: 30),
                    child: Row(
                      children: [
                        Text(
                          "Next",
                          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Icon(Icons.arrow_forward)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        /* floatingActionButton: FloatingActionButton(
          onPressed: () {
            _controller.animateTo(_selectedIndex += 1);
          },
        ),*/
      ),
    );
  }
}
