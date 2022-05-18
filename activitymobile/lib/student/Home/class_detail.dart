import 'package:activitymobile/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart' as latlng;

class ClassDetail extends StatefulWidget {
  const ClassDetail({Key? key}) : super(key: key);

  @override
  _ClassDetailState createState() => _ClassDetailState();
}

class _ClassDetailState extends State<ClassDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          "Class Details",
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/banda.png"),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hot Yoga - Level 1-2",
                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    "2 Credits",
                    style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "4.2 ",
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                  ),
                  Text(
                    " (14)",
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Elava Valley Yoga",
                style: GoogleFonts.poppins(fontSize: 12),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fri, Oct 15",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "08:00 PM - 09:00 PM",
                        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: cColor().yellow),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15, left: 32, right: 32),
                        child: Text(
                          "Book",
                          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
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
                "About",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipis cing bore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco ",
                style: GoogleFonts.poppins(fontSize: 12),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                          child: FlutterMap(
                            options: MapOptions(
                              center: latlng.LatLng(51.5, -0.09),
                              zoom: 13.0,
                            ),
                            layers: [
                              TileLayerOptions(
                                urlTemplate:
                                    "https://api.mapbox.com/styles/v1/hamza34346/ckvteiz4x1xnd15rwikhz0tpz/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiaGFtemEzNDM0NiIsImEiOiJja3Z0ZGU0cXQxOXZwMzFxcGpwbnRvdTc5In0.FMZ5AhAocUN0Abok7yiBog",
                                additionalOptions: {
                                  'accessToken': 'pk.eyJ1IjoiaGFtemEzNDM0NiIsImEiOiJja3Z0ZGU0cXQxOXZwMzFxcGpwbnRvdTc5In0.FMZ5AhAocUN0Abok7yiBog',
                                  'id': 'mapbox.mapbox-streets-v8'
                                },
                                attributionBuilder: (_) {
                                  return Text("© OpenStreetMap contributors");
                                },
                              ),
                              /*MarkerLayerOptions(
            markers: [
              Marker(
                          width: 80.0,
                          height: 80.0,
                          point: LatLng(51.5, -0.09),
                          builder: (ctx) =>
                              Container(
                                child: FlutterLogo(),
                              ),
              ),
            ],
          ),*/
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "1B S Erwin St, Elava Valley",
                            style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
                          ),
                          Text(
                            "24 Km away",
                            style: GoogleFonts.poppins(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/tick.png"),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Mats",
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Row(
                            children: [
                              Image.asset("assets/tick.png"),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Parking",
                                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Reviews",
                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    "View All",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "4.2 ",
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                  ),
                  Text(
                    " (14)",
                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/floki.png",
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Floki",
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "4.2 ",
                            style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                          Icon(
                            Icons.star,
                            size: 12,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipis cing bore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud",
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Safety & Cleanliness",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipis cing bore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco ",
                style: GoogleFonts.poppins(fontSize: 12),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Cancellation Policy",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipis cing bore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco ",
                style: GoogleFonts.poppins(fontSize: 12),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Similar Classes",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/making.png"),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("laoshe",style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),),
                            Text("West Loop",style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),)
                          ],
                        ),
                        Container(
                          color: Colors.yellow,
                          height: 30,
                          width: 20,
                        )

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
