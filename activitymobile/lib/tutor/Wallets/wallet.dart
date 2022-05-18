import 'package:activitymobile/student/Profile/notifications.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*Text(
                "Overview",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(color: Color(0xffFCE9AA), borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 70, top: 35, right: 70, bottom: 35),
                    child: Column(
                      children: [
                        Text(
                          "200",
                          style: GoogleFonts.poppins(fontSize: 36, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Total Credits Earned",
                          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              ),*/
              SizedBox(
                height: 10,
              ),
              Text(
                "History",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "28 Oct 2021",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
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
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "barre3",
                                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                                SizedBox(
                                  width: 45,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Starting",
                                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black54),
                                    ),
                                    SizedBox(
                                      width: 20,
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
                                      "Ending",
                                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black54),
                                    ),
                                    SizedBox(
                                      width: 30,
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
                                      width: 30,
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
                            Text(
                              "15 Enrollments",
                              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.grey),
                            ),
                            Text(
                              "100 Credits Earned",
                              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "29 Oct 2021",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
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
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "barre3",
                                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                                SizedBox(
                                  width: 45,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Starting",
                                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black54),
                                    ),
                                    SizedBox(
                                      width: 20,
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
                                      "Ending",
                                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black54),
                                    ),
                                    SizedBox(
                                      width: 30,
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
                                      width: 30,
                                    ),
                                    Expanded(
                                      child: Row(
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
                            Text(
                              "15 Enrollments",
                              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.grey),
                            ),
                            Text(
                              "100 Credits Earned",
                              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
