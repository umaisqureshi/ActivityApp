import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Cancel extends StatefulWidget {
  const Cancel({Key? key}) : super(key: key);

  @override
  _CancelState createState() => _CancelState();
}

class _CancelState extends State<Cancel> {
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
                "Cancellation Policy",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Define an easy cancellation policy for your\ncustomers so that if they want to cancel they\nshould know how to do it.",
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
                      hintText: "In order to cancel...",
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
