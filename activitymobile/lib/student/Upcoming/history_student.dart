import 'package:activitymobile/Models/TestClass.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HistoryStudent extends StatefulWidget {
  const HistoryStudent({Key? key}) : super(key: key);

  @override
  _HistoryStudentState createState() => _HistoryStudentState();
}

class _HistoryStudentState extends State<HistoryStudent> {
  DateTime _selectedValue = DateTime.now();
  TestClass? testClass;

  @override
  void initState() {
    var list = {
      "data": [
        {
          "name": "Tehseen",
          "location": "Elava Valley Yoga",
          "rating": "5.0",
          "credit": 2,
          "image": "https://s35691.pcdn.co/wp-content/uploads/2015/08/iStock_lecture-hall_Medium-150902.jpg",
          "description": "10Km away from you",
          "groupby": DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, DateTime.now().hour, 0, 0, 0, 0).toIso8601String()
        },
        {
          "location": "Yoga Valley Elava",
          "rating": "4.2",
          "image": "https://s35691.pcdn.co/wp-content/uploads/2018/04/teacher-assisting-student-during-lecture-id490357692-180409.jpg",
          "name": "Poja",
          "credit": 5,
          "description": "10Km away from you",
          "groupby": DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, DateTime.now().hour, 0, 0, 0, 0).toIso8601String()
        },
        {
          "location": "Shammeer Street , Brisbane",
          "rating": "4.2",
          "image": "https://image.shutterstock.com/image-photo/education-high-school-mathematics-people-260nw-422502520.jpg",
          "name": "Mukaram",
          "credit": 6,
          "description": "10Km away from you",
          "groupby": DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, DateTime.now().hour, 0, 0, 0, 0).toIso8601String()
        },
        {
          "location": "Elava Valley Yoga",
          "rating": "4.2",
          "image": "https://s35691.pcdn.co/wp-content/uploads/2015/08/iStock_lecture-hall_Medium-150902.jpg",
          "name": "Badshah",
          "credit": 8,
          "description": "10Km away from you",
          "groupby": DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, DateTime.now().hour + 1, 0, 0, 0, 0).toIso8601String()
        },
        {
          "location": "Elava Valley Yoga",
          "rating": "4.2",
          "image": "https://image.shutterstock.com/image-photo/education-high-school-mathematics-people-260nw-422502520.jpg",
          "name": "Shanto",
          "credit": 10,
          "description": "10Km away from you",
          "groupby": DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, DateTime.now().hour + 2, 0, 0, 0, 0).toIso8601String()
        },
        {
          "location": "Elava Valley Yoga",
          "rating": "4.2",
          "image": "https://s35691.pcdn.co/wp-content/uploads/2018/04/teacher-assisting-student-during-lecture-id490357692-180409.jpg",
          "name": "Trent Bolt",
          "credit": 10,
          "description": "10Km away from you",
          "groupby": DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, DateTime.now().hour + 2, 0, 0, 0, 0).toIso8601String()
        },
        {
          "location": "Elava Valley Yoga",
          "rating": "4.2",
          "image": "https://image.shutterstock.com/image-photo/education-high-school-mathematics-people-260nw-422502520.jpg",
          "name": "Jason Roy",
          "credit": 10,
          "description": "10Km away from you",
          "groupby": DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, DateTime.now().hour + 2, 0, 0, 0, 0).toIso8601String()
        },
        {
          "location": "Elava Valley Yoga",
          "rating": "4.2",
          "image": "https://s35691.pcdn.co/wp-content/uploads/2015/08/iStock_lecture-hall_Medium-150902.jpg",
          "name": "Bairstow",
          "credit": 10,
          "description": "10Km away from you",
          "groupby": DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, DateTime.now().hour + 2, 0, 0, 0, 0).toIso8601String()
        }
      ]
    };
    testClass = TestClass.fromJson(list);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30,bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 20,
                  ),
                  child: Text(
                    "History",
                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 90,
                  child: DatePicker(
                    DateTime.now(),
                    initialSelectedDate: DateTime.now(),
                    selectionColor: Color(0xffFCEAAB),
                    selectedTextColor: Colors.grey,
                    dateTextStyle: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
                    dayTextStyle: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
                    monthTextStyle: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
                    onDateChange: (date) {
                      // New date selected
                      setState(() {
                        _selectedValue = date;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                          children: testClass!.data!
                              .map((e) => Stack(
                                    children: [
                                      Positioned(
                                        top: 10,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Container(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                DateFormat("hh:mm a").format(DateTime.parse(e.items!.first.groupby!)),
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.poppins(color: Colors.black54, fontSize: 16, fontWeight: FontWeight.bold),
                                              )),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30, right: 12, left: 10),
                                        child: Column(
                                          children: e.items!
                                              .map((e) => Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      SizedBox(
                                                        height: 15,
                                                      ),
                                                      Card(
                                                        //margin: EdgeInsets.all(5),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(10.0),
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 5.0, top: 4),
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    decoration:
                                                                        BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(30)),
                                                                    child: ClipRRect(
                                                                      borderRadius: BorderRadius.circular(10),

                                                                      /*child: CachedNetworkImage(
                                                                       fit: BoxFit.cover,
                                                                       imageUrl: "https://s35691.pcdn.co/wp-content/uploads/2015/08/iStock_lecture-hall_Medium-150902.jpg",
                                                                       placeholder: (context, url) => Image.network(e.image!,height: 80, width: 120, fit: BoxFit.cover,),
                                                                       errorWidget: (context, url, error) => Icon(Icons.error,size: 20,color: Colors.black,),
                                                                     ),*/

                                                                      child: Image.network(
                                                                        e.image!,
                                                                        height: 62,
                                                                        width: 67,
                                                                        fit: BoxFit.cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 12,
                                                                  ),
                                                                  Expanded(
                                                                    child: Container(
                                                                      child: Padding(
                                                                        padding: const EdgeInsets.only(
                                                                          bottom: 10.0,
                                                                        ),
                                                                        child: Column(
                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              e.name!,
                                                                              style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 3,
                                                                            ),
                                                                            Text(
                                                                              '120 Points',
                                                                              style: GoogleFonts.poppins(fontSize: 14),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Divider(
                                                              height: 2,
                                                              thickness: 2,
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 10),
                                                              child: Row(

                                                                children: [
                                                                  Column(
                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Text(
                                                                        'Attended On',
                                                                        style: GoogleFonts.poppins(
                                                                            color: Colors.grey, fontSize: 12, ),
                                                                      ),
                                                                      SizedBox(
                                                                        height: 10,
                                                                      ),
                                                                      Text(
                                                                        'Duration',
                                                                        style: GoogleFonts.poppins(
                                                                            color: Colors.grey, fontSize: 12,),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(width: 50,),
                                                                  Column(
                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Text(
                                                                        '04 Mon 2021',
                                                                        style: GoogleFonts.poppins(
                                                                            color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w600),
                                                                      ),
                                                                      SizedBox(
                                                                        height: 10,
                                                                      ),
                                                                      Text(
                                                                        "1 Hour",
                                                                        style: GoogleFonts.poppins(
                                                                            color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w600),
                                                                      ),


                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(height: 10,),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 8.0),
                                                              child: Text('Description',style: GoogleFonts.poppins(fontSize: 12,color: Colors.grey),),
                                                            ),
                                                            SizedBox(height: 10,),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 8.0),
                                                              child: Text("Buy one time credits without changing your monthly plan. You can roll over upto 50 unused credits.",style: GoogleFonts.poppins(fontSize: 12,color: Colors.black), ),
                                                            ),
                                                            SizedBox(height: 50,),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ))
                                              .toList(),
                                        ),
                                      ),
                                    ],
                                  ))
                              .toList()),
                    ),
                  ),
                ),

                /*SizedBox(height: 50,),
                Center(
                  child: Column(

                    children: [
                      Image.asset(
                        "assets/upcoming.png",
                        height: 320,
                        width: 320,
                      ),
                      SizedBox(height: 50,),
                      Text(
                        "Time to book!",
                        style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30,),
                      Text(
                        "You don't have any reservations.\nGet something on your calendar.",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 50,),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LatestUpcoming()));
                        },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: cColor().yellow),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 15, left: 80, right: 80),
                            child: Text(
                              "Register",
                              style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                    ],
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
