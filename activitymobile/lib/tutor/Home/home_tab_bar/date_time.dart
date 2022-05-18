import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../colors.dart';
import '../../get_location.dart';

class DateTimess extends StatefulWidget {
  const DateTimess({Key? key}) : super(key: key);

  @override
  _DateTimessState createState() => _DateTimessState();
}

class _DateTimessState extends State<DateTimess> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "This class takes place",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Text(
                      "You need to define whether this class is going to takes place only once or on multiple occasions.",
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Transform.scale(
                              scale: 1.5,
                              child: Checkbox(
                                activeColor: cColor().yellow,
                                checkColor: Colors.white,
                                value: isChecked,
                                shape: CircleBorder(),
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                            ),
                            Text(
                              "Once",
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 48),
                          child: Text(
                            "You’re only running this class once",
                            style: GoogleFonts.poppins(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Transform.scale(
                              scale: 1.5,
                              child: Checkbox(
                                activeColor: cColor().yellow,
                                checkColor: Colors.white,
                                value: isChecked,
                                shape: CircleBorder(),
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                            ),
                            Text(
                              "Multiple Occassions",
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 48),
                          child: Text(
                            "You’re running the same class multiple times",
                            style: GoogleFonts.poppins(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Starts On",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 12),
                child: Text(
                  "Define the starting date of the class.",
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 12),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      hintText: "23 Oct 2021",
                      suffixIcon: Icon(Icons.calendar_today),
                      hintStyle: GoogleFonts.poppins(fontSize: 14, color: Colors.black54),
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
              SizedBox(
                height: 10,
              ),
              Text(
                "Between",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 12),
                child: Text(
                  "Define the starting and ending time of the class.",
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: SizedBox(
                        height: 70,
                        width: 170,
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              hint: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Start Time",
                                  style: GoogleFonts.poppins(color: const Color(0xff6A6A6A), fontSize: 16),
                                ),
                              ),
                              items: <String>['All', ' Pending', 'Accepted'].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: GoogleFonts.openSans(color: const Color(0xff6A6A6A), fontSize: 10),
                                  ),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: SizedBox(
                        height: 70,
                        width: 170,
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              hint: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Ending Time",
                                  style: GoogleFonts.poppins(color: const Color(0xff6A6A6A), fontSize: 16),
                                ),
                              ),
                              items: <String>['All', ' Pending', 'Accepted'].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: GoogleFonts.openSans(color: const Color(0xff6A6A6A), fontSize: 10),
                                  ),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Class Space",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 12),
                child: Text(
                  "Let your customers know that how much space you have. It will help to create urgency and increase your chances of conversion.",
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: SizedBox(
                  height: 70,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "30",
                            style: GoogleFonts.poppins(color: const Color(0xff6A6A6A), fontSize: 16),
                          ),
                        ),
                        items: <String>['All', ' Pending', 'Accepted'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: GoogleFonts.openSans(color: const Color(0xff6A6A6A), fontSize: 10),
                            ),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Location",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 12),
                child: Text(
                  "Make it easier for your customers to locate the class.",
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 12),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      hintText: "Stuart St Mac's Brew Bar ",
                      hintStyle: GoogleFonts.poppins(fontSize: 14, color: Colors.black54),
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
              InkWell(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => GetLocation()));
                },
                child: Center(
                    child: Text(
                  "Add New Location",
                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                )),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Credits",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 12),
                child: Text(
                  "Define the credits required to enroll in the class. It will help the customer to make a decision.",
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: SizedBox(
                  height: 70,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "30",
                            style: GoogleFonts.poppins(color: const Color(0xff6A6A6A), fontSize: 16),
                          ),
                        ),
                        items: <String>['All', ' Pending', 'Accepted'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: GoogleFonts.openSans(color: const Color(0xff6A6A6A), fontSize: 10),
                            ),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
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
