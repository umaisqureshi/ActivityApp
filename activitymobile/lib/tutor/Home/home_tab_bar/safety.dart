import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Safety extends StatefulWidget {
  const Safety({Key? key}) : super(key: key);

  @override
  _SafetyState createState() => _SafetyState();
}

class _SafetyState extends State<Safety> {
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
                "Safety Guidelines",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "To ensure the health of customers outline\nsome of the safety guidelines that needs to be\nfollow.",
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 16,right: 12),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(maxLines: 22,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      hintText: "You need to make sure...",
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
