import 'package:activitymobile/student/Profile/membership.dart';
import 'package:activitymobile/student/Profile/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TutorProfile extends StatefulWidget {
  const TutorProfile({Key? key}) : super(key: key);

  @override
  _TutorProfileState createState() => _TutorProfileState();
}

class _TutorProfileState extends State<TutorProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_active_outlined, color: Colors.black54,),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Profile",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(radius: 70, backgroundColor: Colors.transparent, child: Image.asset("assets/profile.png")),
                        const Positioned(
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
                          "Laoshe M.",
                          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "20 Credits Earned",
                          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                        ),

                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("05", style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold),),
                        Text("Total Classes", style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),)
                      ],
                    ),
                    Column(
                      children: [
                        Text("05", style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold),),
                        Text("Total Students", style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),)
                      ],
                    ),
                    Column(
                      children: [
                        Text("200", style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold),),
                        Text("Total Credits", style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
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
                    /*Card(
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
                    )*/
                  ],
                ),
              ],
            ),
          ),
        ),
        
      ),
    );
  }
}
