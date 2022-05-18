import 'package:activitymobile/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  _HelpCenterState createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Help Center",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Image.asset(
                "assets/help.png",
                height: 300,
                width: 300,
              )),
              SizedBox(
                height: 20,
              ),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                elevation: 2,
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search, color: Colors.black54),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Describe your issue",
                    hintStyle: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder:
                        const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)), borderSide: BorderSide(color: Colors.white)),
                    contentPadding: EdgeInsets.only(top: 35, bottom: 10, left: 10),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Question? We've got instant answers",
                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Color(0xffFFFCF0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(textColor: Colors.black,
                      iconColor: Colors.black54,
                      childrenPadding: EdgeInsets.only(right: 18, left: 15, bottom: 10),
                      initiallyExpanded: true,
                      title: Text(
                        "What is Activity Pack?",
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                      children: [
                        Text(
                          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor",
                          style: GoogleFonts.poppins(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      textColor: Colors.black,
                      iconColor: Colors.black54,
                      title: Text(
                        "What is Activity Pack?",
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18, right: 15),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor",
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      textColor: Colors.black,
                      iconColor: Colors.black54,
                      title: Text(
                        "What is Activity Pack?",
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18, right: 15),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor",
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      textColor: Colors.black,
                      iconColor: Colors.black54,
                      title: Text(
                        "What is Activity Pack?",
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18, right: 15),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor",
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    ));
  }
}
