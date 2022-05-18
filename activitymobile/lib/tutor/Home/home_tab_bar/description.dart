import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Description extends StatefulWidget {
  const Description({Key? key}) : super(key: key);

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
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
                "Short Description",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "This is the first thing customers see. Try to\ndescribe in 160 characters",
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 12),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      hintText: "Short Description",
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
                "Long Description",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Describe the class and what customers will\nlearn. The more information you can provide,\nthe better.",
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
                      hintText: "Long Description",
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
                "Instructions",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Do customers need to bring anything?\nWhat is provided? Is there anything\ncustomers need to be aware of before a class?",
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
                      hintText: "Keep in mind to",
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
