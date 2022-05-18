import 'package:activitymobile/Models/browse_all_model.dart';
import 'package:activitymobile/tutor/Home/calender.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Search",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search, color: Colors.black54),
                    fillColor: Colors.grey,
                    hintText: "Yoga, Pottery, Cooking",
                    hintStyle: GoogleFonts.poppins(fontSize: 14, color: Colors.black54),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      borderSide: BorderSide(color: Colors.black54),
                    ),
                    enabledBorder:
                        const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(7)), borderSide: BorderSide(color: Colors.black54)),
                    contentPadding: EdgeInsets.only(top: 30, bottom: 10, left: 10),
                  ),
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                Text(
                  "How it Works",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      Container(
                          width: media.width,
                          height: 250,
                          decoration: BoxDecoration(color: const Color(0xffF8CA2E).withOpacity(0.6), borderRadius: BorderRadius.circular(20)),
                          child: Image.asset("assets/g3.png")),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                              color: Colors.white,
                            ),
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 13.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Learn how it works',
                                    style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => Calender()));
                                      },
                                      child: Icon(Icons.arrow_forward))
                                ],
                              ),
                            )
                            /*Center(child: Text("hello", style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),)),*/
                            ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Browse all",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                Container(
                  height: 320,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 20.0, mainAxisSpacing: 10.0),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Stack(
                          fit: StackFit.passthrough,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                listOfBrowseAll[index].image!,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black54.withOpacity(0.7),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10, top: 5, bottom: 5, right: 103),
                                  child: Text(
                                    listOfBrowseAll[index].name!,
                                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      }),
                ),
                /*Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 155,
                          height: 120,
                          child: Stack(
                            fit: StackFit.passthrough,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/mask1.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black54.withOpacity(0.7),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10, top: 5, bottom: 5, right: 103),
                                    child: Text(
                                      "Pottery",
                                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 155,
                          height: 120,
                          child: Stack(
                            fit: StackFit.passthrough,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/mask2.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black54.withOpacity(0.7),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10, top: 5, bottom: 5, right: 103),
                                    child: Text(
                                      "Fitness",
                                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 180,
                          height: 120,
                          child: Stack(
                            fit: StackFit.passthrough,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/mask3.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black54.withOpacity(0.7),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10, top: 5, bottom: 5, right: 95),
                                    child: Text(
                                      "Cooking",
                                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 180,
                          height: 120,
                          child: Stack(
                            fit: StackFit.passthrough,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/mask4.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black54.withOpacity(0.7),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10, top: 5, bottom: 5, right: 122),
                                    child: Text(
                                      "Yoga",
                                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),*/
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Favourite Places",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.black54), borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12, top: 7, bottom: 7),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.black54,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "West Village",
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.black54), borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12, top: 7, bottom: 7),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.black54,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "East Village",
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.black54), borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12, top: 7, bottom: 7),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.black54,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "East Village",
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Top Catogeries",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: media.width * 0.45,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xffFDF2CA)),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/mask.png",
                                height: 70,
                              ),
                              SizedBox(
                                width: media.width * 0.02,
                              ),
                              Text(
                                "Pottery",
                                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: media.width * 0.02,
                        ),
                        Expanded(
                          child: Container(
                            width: media.width * 0.45,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xffFDF2CA)),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/chat.png",
                                  height: 70,
                                ),
                                SizedBox(
                                  width: media.width * 0.02,
                                ),
                                Text(
                                  "Cooking",
                                  style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: media.height * 0.02,
                    ),
                    Row(
                      children: [
                        Container(
                          width: media.width * 0.45,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xffFDF2CA)),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/run.png",
                                height: 70,
                              ),
                              SizedBox(
                                width: media.width * 0.02,
                              ),
                              Text(
                                "Fitness",
                                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: media.width * 0.02,
                        ),
                        Expanded(
                          child: Container(
                            width: media.width * 0.45,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xffFDF2CA)),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/yoga.png",
                                  height: 70,
                                ),
                                SizedBox(
                                  width: media.width * 0.02,
                                ),
                                Text(
                                  "Yoga",
                                  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
