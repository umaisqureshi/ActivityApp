import 'package:activitymobile/Models/TestClass.dart';
import 'package:activitymobile/student/Home/class_detail.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../colors.dart';
import 'history_student.dart';
import 'latest_upcoming.dart';


class Upcoming extends StatefulWidget {
  const Upcoming({Key? key}) : super(key: key);

  @override
  _UpcomingState createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
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
    /*   SchedulerBinding.instance!.addPostFrameCallback((timeStamp) async {
   var  map =  groupBy(list, (Map<String, dynamic> item) => DateTime.parse(item['groupby']));

     map.forEach((key, value) {
        widgetList.add(Stack(
          children: [
            Positioned(
              top: 40,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                    alignment: Alignment.topLeft, child: Text(DateFormat("hh:mm\na").format(key), textAlign: TextAlign.center,)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45.0 , right: 8),
              child: Column(
                children: value
                    .map((e) => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Card(
                              //margin: EdgeInsets.all(5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.network(
                                          "https://s35691.pcdn.co/wp-content/uploads/2015/08/iStock_lecture-hall_Medium-150902.jpg",
                                          height: 140,
                                          width: 120,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 20.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    'Laoshe',
                                                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    width: 30,
                                                  ),
                                                  Icon(Icons.favorite_border)
                                                ],
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                "Elava Valley Yoga",
                                                style: GoogleFonts.poppins(fontSize: 12),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "4.2",
                                                    style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                  ),
                                                  Text(
                                                    "(14)",
                                                    style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '2 Credits',
                                      style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "10km away from you",
                                          style: GoogleFonts.poppins(fontSize: 12),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ClassDetail()));
                                          },
                                          child: Text(
                                            "View",
                                            style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ))
                    .toList(),
              ),
            ),
          ],
        ));
      });
      setState(() {});
    });*/

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 20,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Upcoming",
                        style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                      ),

                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HistoryStudent()));
                        },
                        child: Text(
                          "History",
                          style: GoogleFonts.poppins(fontSize: 14, ),
                        ),
                      ),

                    ],
                  ),
                ),

                SizedBox(height: 20,),

                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
                        color: Color(0xffF8CA2E),
                      ),
                      width: 80,
                      height: 70,

                      child: Center(child: Text('OCT ',style: GoogleFonts.poppins(color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold),)),
                      

                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        height: 90,

                        child: DatePicker(
                          DateTime.now(),
                          initialSelectedDate: DateTime.now(),
                          selectionColor: Color(0xffFCEAAB),
                          selectedTextColor: Colors.grey,
                          dateTextStyle: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.grey),
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
                    ),
                  ],
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
                                top: 40,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        DateFormat("hh:mm\na").format(DateTime.parse(e.items!.first.groupby!)),
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 45.0, right: 8),
                                child: Column(
                                  children: e.items!
                                      .map((e) => Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Card(
                                        elevation: 0.0,
                                        //margin: EdgeInsets.all(5),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(22.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 20, right: 5, bottom: 12, top: 10),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration( color: Colors.black ,borderRadius: BorderRadius.circular(30)),
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
                                                        height: 134,
                                                        width: 93,
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
                                                        padding: const EdgeInsets.only(bottom: 10.0,),
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [

                                                                Text(
                                                                  e.name!,
                                                                  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                                                                ),

                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              children: [
                                                                Column(
                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                  Text('Start',style: GoogleFonts.poppins(color: Colors.grey,fontSize: 14, fontWeight: FontWeight.w500),),
                                                                  SizedBox(height: 5,),
                                                                  Text('End',style: GoogleFonts.poppins(color: Colors.grey,fontSize: 14, fontWeight: FontWeight.w500),),
                                                                  SizedBox(height: 5,),
                                                                  Text('Location',style: GoogleFonts.poppins(color: Colors.grey,fontSize: 14, fontWeight: FontWeight.w500),),
                                                                ],),
                                                                Column(
                                                                  children: [
                                                                    Text('11:00 pm',style: GoogleFonts.poppins(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w600),),
                                                                    SizedBox(height: 5,),
                                                                    Text('12:00 am',style: GoogleFonts.poppins(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w600),),
                                                                    SizedBox(height: 5,),
                                                                    Text('Melburne',style: GoogleFonts.poppins(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w600),),
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
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
