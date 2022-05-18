import 'package:activitymobile/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Overview extends StatefulWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  bool isChecked = true;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = true;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isCheckedExperience = false;
  int dropDownValue = 0;
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
                "Class Name",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Enter your class name. Try to include the \nkeywords that provide context for customers.",
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
                      hintText: "Class Name",
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
              SizedBox(height: 10,),
              Text(
                "Class Type",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Select your class type. This affects the\nstructure of the class on the website.",
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              ),
              SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.only(left: 15),
               child: Column(
                 children: [
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
                             "Class",
                             style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 16),
                           ),
                         ],
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 48),
                         child: Text(
                           "One Off-Session that customers can \npurchase independently.",
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
                               value: isChecked1,
                               shape: CircleBorder(),
                               onChanged: (bool? value) {
                                 setState(() {
                                   isChecked1 = value!;
                                 });
                               },
                             ),
                           ),
                           Text(
                             "Workshop",
                             style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 16),
                           ),
                         ],
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 48),
                         child: Text(
                           "One Off-Session that customers can \npurchase independently.",
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
                               value: isChecked2,
                               shape: CircleBorder(),
                               onChanged: (bool? value) {
                                 setState(() {
                                   isChecked2 = value!;
                                 });
                               },
                             ),
                           ),
                           Text(
                             "Online",
                             style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 16),
                           ),
                         ],
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 48),
                         child: Text(
                           "One Off-Session that customers can \npurchase independently.",
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
                               value: isCheckedExperience,
                               shape: CircleBorder(),
                               onChanged: (bool? value) {
                                 setState(() {
                                   isCheckedExperience = value!;
                                 });
                               },
                             ),
                           ),
                           Text(
                             "Experience",
                             style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 16),
                           ),
                         ],
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 48),
                         child: Text(
                           "One Off-Session that customers can \npurchase independently.",
                           style: GoogleFonts.poppins(fontSize: 14),
                         ),
                       ),
                     ],
                   ),

                 ],
               ),
             ),
              SizedBox(height: 15,),
              Text(
                "Category",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Please select the correct main category for\nyour class so they are easy to find through\nour search & filters.",
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
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
                            "Pottery",
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
              SizedBox(height: 10,),
              Text(
                "Skill Level",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Let students know what level of skill is\nrequired to attend the class. If all levels are\nwelcome, please select Beginner.",
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            activeColor: cColor().yellow,
                            checkColor: Colors.white,
                            value: isChecked3,
                            shape: CircleBorder(),
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked3 = value!;
                                print(value  );
                              });
                            },
                          ),
                        ),
                        Text(
                          "Beginner",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            activeColor: cColor().yellow,
                            checkColor: Colors.white,
                            value: isChecked4,
                            shape: CircleBorder(),
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked4 = value!;
                              });
                            },
                          ),
                        ),
                        Text(
                          "Intermediate",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            activeColor: cColor().yellow,
                            checkColor: Colors.white,
                            value: isChecked5,
                            shape: CircleBorder(),
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked5 = value!;
                              });
                            },
                          ),
                        ),
                        Text(
                          "Advanced",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
