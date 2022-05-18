import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Models/language_model.dart';

class Languages extends StatefulWidget {
  const Languages({Key? key}) : super(key: key);

  @override
  _LanguagesState createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  List<LanguageModel> languageModel = [
    LanguageModel(pic: "assets/usa.png", name: 'English  - US', isSelected: false),
    LanguageModel(pic: "assets/uk.png", name: 'English  - UK', isSelected: false),
    LanguageModel(pic: "assets/gr.png", name: 'German', isSelected: false)
  ];
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
                "Language",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10,),
              Text(
                "Choose the language you want to go with",
                style: GoogleFonts.poppins(fontSize: 14),
              ),
              SizedBox(height: 10,),
              TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search, color: Colors.black54),
                  fillColor: Colors.grey,
                  hintText: "Search for language",
                  hintStyle: GoogleFonts.poppins(fontSize: 14, color: Colors.black54),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  enabledBorder:
                      const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide(color: Colors.black54)),
                  contentPadding: EdgeInsets.only(top: 22, bottom: 22, left: 10),
                ),
              ),
              SizedBox(height: 10,),
              ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: languageModel
                      .map((e) => Card(
                    color:  e.isSelected ? Color(0xffFFF8E1) : Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ListTile(
                                onTap: () {
                                  languageModel.firstWhere((element) => element.name == e.name).isSelected = true;
                                  languageModel.where((element) => element.name != e.name).forEach((element) {
                                    element.isSelected = false;
                                  });
                                  setState(() {});
                                },
                                leading: Image.asset(
                                  e.pic,
                                  height: 55,
                                  width: 55,
                                ),
                                title: Text(
                                  e.name,
                                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                                ),

                              ),
                            ),
                          ))
                      .toList())
            ],
          ),
        ),
      ),
    ));
  }
}
