import 'package:activitymobile/tutor/Home/createClass/create_class.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'more_screen.dart';
class Manage extends StatefulWidget {
  const Manage({Key? key}) : super(key: key);

  @override
  _ManageState createState() => _ManageState();
}

class _ManageState extends State<Manage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Manage Classes",
              style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MoreScreen()));
              },
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/new.png",
                            height: 135,
                            width: 135,
                          ),
                          SizedBox(width: 10,),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "barre3",
                                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Reschedule",
                                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Start",
                                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black54),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Text(
                                      "04:00 pm",
                                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black54),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "End",
                                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black54),
                                    ),
                                    SizedBox(
                                      width: 48,
                                    ),
                                    Text(
                                      "05:00 pm",
                                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black54),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Rating",
                                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black54),
                                    ),
                                    SizedBox(
                                      width: 23,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "4.2 ",
                                          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black54),
                                        ),
                                        Icon(Icons.star, color: Colors.black54),
                                        Text(
                                          " (14) ",
                                          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Stack(
                                children: const [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage("assets/pic1.png"),
                                  ),
                                  Positioned(
                                      left: 20,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.yellow,
                                        radius: 20,
                                        backgroundImage: AssetImage("assets/pic2.png"),
                                      )),
                                  Positioned(
                                      left: 40,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 20,
                                        backgroundImage: AssetImage("assets/pic1.png"),
                                      )),
                                  Positioned(
                                      left: 40,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 20,
                                        backgroundImage: AssetImage("assets/pic2.png"),
                                      )),
                                  Positioned(
                                      left: 70,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 20,
                                        backgroundImage: AssetImage("assets/pic4.png"),
                                      )),
                                  Positioned(
                                      left: 85,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.pink,
                                        radius: 20,
                                        backgroundImage: AssetImage("assets/pic3.png"),
                                      )),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => CreateClass()));
                              },
                              child: Container(

                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xffFADA6C)),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 15, bottom: 15, left: 30, right: 30),
                                  child: Text(
                                    "Edit Info",
                                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
