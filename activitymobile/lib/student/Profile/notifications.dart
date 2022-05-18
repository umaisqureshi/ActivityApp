import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Notifications",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                ),

                Text(
                  "Mark As Read",
                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black54),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text(
              "Today",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20,),
            ListView(
              shrinkWrap: true,
              children: [
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.calendar_today,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Class Alert",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        "You have a class at 7:00 pm today. ",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                      ),
                      trailing: Text(
                        "30m",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black54),
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.calendar_today,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Class Alert",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        "You have a class at 7:00 pm today. ",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                      ),
                      trailing: Text(
                        "30m",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black54),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Text(
              "Yesterday",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),

            ),
            SizedBox(height: 10,),
            ListView(
              shrinkWrap: true,
              children: [
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.calendar_today,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Class Alert",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        "You have a class at 7:00 pm today. ",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                      ),
                      trailing: Text(
                        "30m",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black54),
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.calendar_today,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Class Alert",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        "You have a class at 7:00 pm today. ",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                      ),
                      trailing: Text(
                        "30m",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black54),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
