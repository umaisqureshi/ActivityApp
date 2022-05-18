import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Email extends StatefulWidget {
  const Email({Key? key}) : super(key: key);

  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Text(
                "Pre Class Notes",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "All your students will receive a welcome from\nyou immediately after booking and as a\nreminder before the class starts. Take the\ntime to welcome them and make sure you\nlet them know anything they need to prepare.",
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 16,right: 12),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(maxLines: 9,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      hintText: "Welcome to...",
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
              ),
              Text(
                "Post Class Notes",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Follow up with your customers! Add a link to\na PDF recipe, or some notes that you have.",
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 16,right: 12),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(maxLines: 9,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      hintText: "Welcome to...",
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
              ),

            ],
          ),
        ),
      ),
    );
  }
}
