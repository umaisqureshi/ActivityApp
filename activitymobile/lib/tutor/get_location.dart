import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:latlong2/latlong.dart' as latlng;
import 'tutor_nav.dart';

class GetLocation extends StatefulWidget {
  const GetLocation({Key? key}) : super(key: key);

  @override
  _GetLocationState createState() => _GetLocationState();
}

class _GetLocationState extends State<GetLocation> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          FlutterMap(
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
          Positioned(
            bottom: 10,
            right: 10,
            left: 10,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                child: Container(
                  height: 370,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Is this your location?",
                          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              " Address",
                              style: GoogleFonts.poppins(fontSize: 12),
                            ),
                            const TextField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    " City",
                                    style: GoogleFonts.poppins(fontSize: 12),
                                  ),
                                  const TextField(
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    " Post Code",
                                    style: GoogleFonts.poppins(fontSize: 12),
                                  ),
                                  const TextField(
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    " State",
                                    style: GoogleFonts.poppins(fontSize: 12),
                                  ),
                                  const TextField(
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => TutorNavBar()));
                              },
                              child: Image.asset(
                                "assets/tick.png",
                                height: 40,
                                width: 40,
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
