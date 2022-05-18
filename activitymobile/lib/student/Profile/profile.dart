import 'package:activitymobile/student/Profile/settings.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'favourite.dart';
import 'friends.dart';
import 'membership.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
          child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Profile",
                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(radius: 70, backgroundColor: Colors.transparent, child: Image.asset("assets/profile.png")),
                          Positioned(
                            right: 0,
                            bottom: 25,
                            child: CircleAvatar(
                                backgroundColor: Color(0xffF1F0F0),
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.black,
                                )),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Riyan Farsad",
                            style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "20 Credits remaining",
                            style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "18 days left",
                            style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: ListTile(
                            leading: Image.asset(
                              "assets/setting.png",
                              height: 30,
                              width: 30,
                            ),
                            title: Text(
                              "Setting",
                              style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 20,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Settings()));
                              },
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: ListTile(
                            leading: Image.asset(
                              "assets/member.png",
                              height: 30,
                              width: 30,
                            ),
                            title: Text(
                              "Membership",
                              style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.arrow_forward_ios_sharp, size: 20),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MemberShip()));

                              },
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TabBar(
                      indicator: BoxDecoration(color: Color(0xffFBE496), borderRadius: BorderRadius.circular(10)),
                      indicatorColor: Colors.black,
                      unselectedLabelColor: Colors.black54,
                      labelColor: Colors.black,
                      tabs: [
                        Tab(
                            child: Text(
                          "Past",
                          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                        )),
                        Tab(
                            child: Text(
                          "Favourite",
                          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                        )),
                        Tab(
                            child: Text(
                          "Friends",
                          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                        )),
                      ]),
                  Expanded(
                    child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 26,
                              ),
                              Image.asset(
                                "assets/oh.png",
                                height: 150,
                                width: 150,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "You haven't taken any classes yet.\nReady to learn?",
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 28,
                              ),
                              InkWell(
                                onTap: () {
                                  /*Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => Createaccount()));*/
                                },
                                child: Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.black)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15, bottom: 15, left: 60, right: 60),
                                    child: Text(
                                      "EXPLORE",
                                      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Favourite(),
                        Friends(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
