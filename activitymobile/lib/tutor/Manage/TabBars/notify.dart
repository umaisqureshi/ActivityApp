import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Notify extends StatefulWidget {
  const Notify({Key? key}) : super(key: key);

  @override
  _NotifyState createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text(
              "Notify via Email",
              style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10,),
            Text(
              "Tell your message that you want to convey to your students.",
              style: GoogleFonts.poppins(fontSize: 14),
            ),
            SizedBox(height: 10,),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: TextFormField(maxLines: 9,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  hintText: "This is to inform you …",
                  hintStyle: GoogleFonts.poppins(fontSize: 12, color: Colors.black54),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder:
                  const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide(color: Colors.white)),
                  contentPadding: EdgeInsets.only(top: 35, bottom: 10, left: 10),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xffFADA6C)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15, left: 40, right: 40),
                    child: Text(
                      "Send Mail",
                      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
