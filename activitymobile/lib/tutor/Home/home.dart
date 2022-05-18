import 'package:activitymobile/student/Search/search.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors.dart';
import 'createClass/create_class.dart';

class TutorHome extends StatefulWidget {
  const TutorHome({Key? key}) : super(key: key);

  @override
  _TutorHomeState createState() => _TutorHomeState();
}
class _TutorHomeState extends State<TutorHome> {

  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_active_outlined,
                color: Colors.black54,
              ),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Text(
                "Hello",
                style: GoogleFonts.poppins(fontSize: 29),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Text(
                "Laoshe",
                style: GoogleFonts.poppins(fontSize: 29, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Text(
                "You have no activities yet",
                style: GoogleFonts.poppins(fontSize: 14),
              ),
            ),
            SizedBox(height: 10,),

            DatePicker(
              DateTime.now(),
              initialSelectedDate: DateTime.now(),
              selectionColor: Color(0xffFCEAAB),
              selectedTextColor: Colors.white,
              //dayTextStyle: TextStyle(color: Colors.transparent),

              onDateChange: (date) {
                // New date selected
                setState(() {
                  _selectedValue = date;
                });
              },
            ),

             Container(
                child: Center(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/homes.png",
                        height: MediaQuery.of(context).size.height * 0.25,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Ready to spread knowledge?",
                        style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        "You don't have any classes created yet. \nGet something on your calendar.",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 15,),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => CreateClass()));
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: cColor().yellow),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 15, left: 80, right: 80),
                            child: Text(
                              "CREATE",
                              style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
