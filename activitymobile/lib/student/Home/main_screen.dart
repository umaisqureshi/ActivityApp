import 'dart:core';
import 'dart:math';
import 'dart:ui';
import 'package:activitymobile/Constants/constants.dart';
import 'package:activitymobile/Models/TestClass.dart';
import 'package:activitymobile/student/Home/resusable_card.dart';
import 'package:activitymobile/student/Home/slider_thumb.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latlng;
import 'package:google_fonts/google_fonts.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'bottom_model.dart';
import 'class_detail.dart';
import 'home_search_screen.dart';
import 'package:intl/intl.dart';
import 'package:collection/collection.dart';

class ModelClass {
  String? chipName;
  bool? isSelected;
  GlobalKey? globalKey;

  ModelClass({this.chipName, this.isSelected, this.globalKey});
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();
  bool height = false;
  bool height1 = false;
  double value = 50;
  String? _selectedMonth;
  int? _selectedYear;
  int? _selectedDay;
  bool buttonColor = false;
  List<String> _month = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
  List<int> _years = List.generate(50, (index) => (2020) + (index + 1));
  List<int> _days = List.generate(30, (index) => (0) + (index + 1));

  List<ModelClass> _allChips = [
    ModelClass(chipName: "Martial arts", isSelected: false, globalKey: GlobalKey()),
    ModelClass(chipName: "Yoga", isSelected: false, globalKey: GlobalKey()),
    ModelClass(chipName: "Pilates", isSelected: false, globalKey: GlobalKey()),
    ModelClass(chipName: "Dance", isSelected: false, globalKey: GlobalKey()),
    ModelClass(chipName: "Massage", isSelected: false, globalKey: GlobalKey()),
    ModelClass(chipName: "Manicures", isSelected: false, globalKey: GlobalKey()),
    ModelClass(chipName: "Pedicures", isSelected: false, globalKey: GlobalKey()),
    ModelClass(chipName: "Acupuncture", isSelected: false, globalKey: GlobalKey()),
  ];
  ScrollController scrollController = ScrollController();
  late Animation animation;
  late AnimationController animatedController;

  // final CameraPosition _initialPosition = CameraPosition(target: LatLng(31.5204, 74.3587));
  List<BottomModel> bottomModel = [
    BottomModel(pic: "assets/bottom1.png", name: "Elava Valley Yoga", distance: "10", num: "14", rating: "4.2"),
    BottomModel(pic: "assets/bottom1.png", name: "Elava Valley Yoga", distance: "10", num: "14", rating: "4.2"),
    BottomModel(pic: "assets/bottom1.png", name: "Elava Valley Yoga", distance: "10", num: "14", rating: "4.2"),
    BottomModel(pic: "assets/bottom1.png", name: "Elava Valley Yoga", distance: "10", num: "14", rating: "4.2"),
    BottomModel(pic: "assets/bottom1.png", name: "Elava Valley Yoga", distance: "10", num: "14", rating: "4.2"),
    BottomModel(pic: "assets/bottom1.png", name: "Elava Valley Yoga", distance: "10", num: "14", rating: "4.2"),
    BottomModel(pic: "assets/bottom1.png", name: "Elava Valley Yoga", distance: "10", num: "14", rating: "4.2"),
    BottomModel(pic: "assets/bottom1.png", name: "Elava Valley Yoga", distance: "10", num: "14", rating: "4.2"),
    BottomModel(pic: "assets/bottom1.png", name: "Elava Valley Yoga", distance: "10", num: "14", rating: "4.2"),
  ];

  OverlayEntry? overlayEntry;
  List<Widget> widgetList = [];
  TestClass? testClass;
  Map<String, dynamic>? list;

  @override
  void initState() {
    list = {
      "data": [
        {
          "name": "Tehseen",
          "location": "Elava Valley Yoga",
          "rating": "5.0",
          "credit": 2,
          "image": "https://s35691.pcdn.co/wp-content/uploads/2015/08/iStock_lecture-hall_Medium-150902.jpg",
          "description": "10Km away from you",
          "groupby": DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, DateTime.now().hour, 0, 0, 0, 0).toIso8601String()
        },
        {
          "location": "Yoga Valley Elava",
          "rating": "4.2",
          "image": "https://s35691.pcdn.co/wp-content/uploads/2018/04/teacher-assisting-student-during-lecture-id490357692-180409.jpg",
          "name": "Poja",
          "credit": 5,
          "description": "10Km away from you",
          "groupby": DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, DateTime.now().hour, 0, 0, 0, 0).toIso8601String()
        },
        {
          "location": "Shammeer Street , Brisbane",
          "rating": "4.2",
          "image": "https://image.shutterstock.com/image-photo/education-high-school-mathematics-people-260nw-422502520.jpg",
          "name": "Mukaram",
          "credit": 6,
          "description": "10Km away from you",
          "groupby": DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 1, DateTime.now().hour, 0, 0, 0, 0).toIso8601String()
        },
        {
          "location": "Elava Valley Yoga",
          "rating": "4.2",
          "image": "https://s35691.pcdn.co/wp-content/uploads/2015/08/iStock_lecture-hall_Medium-150902.jpg",
          "name": "Badshah",
          "credit": 8,
          "description": "10Km away from you",
          "groupby":
              DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 1, DateTime.now().hour + 1, 0, 0, 0, 0).toIso8601String()
        },
        {
          "location": "Elava Valley Yoga",
          "rating": "4.2",
          "image": "https://image.shutterstock.com/image-photo/education-high-school-mathematics-people-260nw-422502520.jpg",
          "name": "Shanto",
          "credit": 10,
          "description": "10Km away from you",
          "groupby":
              DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 2, DateTime.now().hour + 2, 0, 0, 0, 0).toIso8601String()
        },
        {
          "location": "Elava Valley Yoga",
          "rating": "4.2",
          "image": "https://s35691.pcdn.co/wp-content/uploads/2018/04/teacher-assisting-student-during-lecture-id490357692-180409.jpg",
          "name": "Trent Bolt",
          "credit": 10,
          "description": "10Km away from you",
          "groupby":
              DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 2, DateTime.now().hour + 2, 0, 0, 0, 0).toIso8601String()
        },
        {
          "location": "Elava Valley Yoga",
          "rating": "4.2",
          "image": "https://image.shutterstock.com/image-photo/education-high-school-mathematics-people-260nw-422502520.jpg",
          "name": "Jason Roy",
          "credit": 10,
          "description": "10Km away from you",
          "groupby":
              DateTime(DateTime.now().year, DateTime.now().month + 1, DateTime.now().day + 1, DateTime.now().hour + 2, 0, 0, 0, 0).toIso8601String()
        },
        {
          "location": "Elava Valley Yoga",
          "rating": "4.2",
          "image": "https://s35691.pcdn.co/wp-content/uploads/2015/08/iStock_lecture-hall_Medium-150902.jpg",
          "name": "Bairstow",
          "credit": 10,
          "description": "10Km away from you",
          "groupby":
              DateTime(DateTime.now().year, DateTime.now().month + 1, DateTime.now().day, DateTime.now().hour + 2, 0, 0, 0, 0).toIso8601String()
        }
      ]
    };
    testClass = TestClass.fromJson(list!);

    TestClass.fromJsonHistory(list!, DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, DateTime.now().hour, 0, 0, 0, 0));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        /*GoogleMap(
          zoomControlsEnabled: false,
          initialCameraPosition: _initialPosition,
          mapType: MapType.normal,
        ),*/
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
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: height1 ? 1.0 : 0.0, sigmaY: height1 ? 1.0 : 0.0),
            child: AnimatedContainer(
                height: height ? 390 : 60,
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.8), borderRadius: BorderRadius.circular(20)),
                duration: Duration(milliseconds: 250),
                onEnd: () {
                  setState(() {
                    height1 = height;
                  });
                },
                child: Column(
                  children: [
                    ListTile(
                      leading: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    duration: Duration(milliseconds: 250), type: PageTransitionType.bottomToTop, child: HomeSearchScreen()));
                          },
                          child: Icon(Icons.search, color: Colors.black54)),
                      title: TextField(
                        autocorrect: true,
                        textInputAction: TextInputAction.search,
                        onSubmitted: (value) {
                          Navigator.push(context,
                              PageTransition(duration: Duration(milliseconds: 250), type: PageTransitionType.bottomToTop, child: HomeSearchScreen()));
                        },
                        decoration: InputDecoration(border: InputBorder.none, hintText: 'Search Activities'),
                      ),
                      /*InkWell(
                      onTap: (){

                      },
                      child: Text(
                        "Search Experiences",
                        style: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                      ),
                    ),*/
                      trailing: InkWell(
                          onTap: () {
                            // ShowOverLay();
                            setState(() {
                              if (height) height1 = false;
                              height = !height;
                            });
                          },
                          child: Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(color: Color(0xffFAEAAB), borderRadius: BorderRadius.circular(50)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(
                                  "assets/filter_image.png",
                                ),
                              ))),
                    ),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      visible: height1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 17.0),
                            child: Text(
                              'Filter Your Search',
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 17.0, right: 22),
                            child: Row(
                              children: [
                                Text(
                                  'Radius',
                                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                Text(
                                  'miles',
                                  style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          SliderTheme(
                            data: SliderThemeData(thumbShape: SliderThumbShape(num: this.value.round().toString())),
                            child: Slider(
                                value: value,
                                min: 0,
                                max: 100,
                                divisions: 100,
                                activeColor: const Color(0xffFCEAAB),
                                inactiveColor: const Color(0xff707070),
                                //label: value.round().toString(),
                                onChanged: (value) {
                                  this.value = value;
                                  setState(() {});
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 17.0),
                            child: Text(
                              'Date',
                              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13.0),
                            child: SizedBox(
                              height: 50,
                              child: Row(
                                children: [
                                  Container(
                                    width: media.width / 3,
                                    margin: const EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xffFCEAAB)),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        isExpanded: true,
                                        hint: Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            'Month',
                                            style: GoogleFonts.poppins(color: Colors.black, fontSize: 14),
                                          ),
                                        ), // Not necessary for Option 1
                                        value: _selectedMonth,
                                        onChanged: (newValue) {
                                          setState(() {
                                            _selectedMonth = newValue as String?;
                                          });
                                        },
                                        items: _month.map((selectMonth) {
                                          return DropdownMenuItem(
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 8.0),
                                              child: Text(selectMonth),
                                            ),
                                            value: selectMonth,
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: media.width / 5,
                                    margin: EdgeInsets.fromLTRB(0, 4.0, 4.0, 4.0),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xffFCEAAB)),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<int>(
                                        isExpanded: true,
                                        hint: Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            'Day',
                                            style: GoogleFonts.poppins(color: Colors.black, fontSize: 14),
                                          ),
                                        ), // Not necessary for Option 1
                                        value: _selectedDay,
                                        onChanged: (newValue) {
                                          setState(() {
                                            _selectedDay = newValue;
                                          });
                                        },
                                        items: _days.map((selectDay) {
                                          return DropdownMenuItem(
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 8.0),
                                              child: new Text(selectDay.toString()),
                                            ),
                                            value: selectDay,
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: media.width / 5,
                                    margin: EdgeInsets.fromLTRB(0, 4.0, 4.0, 4.0),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xffFCEAAB)),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<int>(
                                        isExpanded: true,
                                        hint: Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            'Year',
                                            style: GoogleFonts.poppins(color: Colors.black, fontSize: 14),
                                          ),
                                        ), // Not necessary for Option 1
                                        value: _selectedYear,
                                        onChanged: (newValue) {
                                          setState(() {
                                            _selectedYear = newValue;
                                          });
                                        },
                                        items: _years.map((selectYear) {
                                          return DropdownMenuItem(
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 8.0),
                                              child: new Text(selectYear.toString()),
                                            ),
                                            value: selectYear,
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 17.0),
                            child: Text(
                              'Genre',
                              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 17.0),
                            child: Container(
                              height: 70,
                              child: ScrollConfiguration(
                                behavior: ScrollBehavior(),
                                child: GlowingOverscrollIndicator(
                                  showLeading: false,
                                  showTrailing: false,
                                  color: Colors.transparent,
                                  axisDirection: AxisDirection.down,
                                  child: ListView(
                                    controller: scrollController,
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    children: _allChips
                                        .map(
                                          (e) => InkWell(
                                            onTap: () {
                                              _allChips.firstWhere((element) => element.chipName == e.chipName).isSelected = true;
                                              _allChips.where((element) => element.chipName != e.chipName).forEach((ele) {
                                                ele.isSelected = false;
                                              });
                                              scrollController.animateTo(e.globalKey!.currentContext!.size!.width * _allChips.indexOf(e),
                                                  duration: Duration(milliseconds: 250), curve: Curves.easeInOut);

                                              setState(() {});
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 5.0),
                                              child: Chip(
                                                  key: e.globalKey,
                                                  //side: BorderSide(color: Colors.black),
                                                  backgroundColor: e.isSelected! ? Colors.amber : Color(0xffFCEAAB),
                                                  label: Text(
                                                    e.chipName.toString(),
                                                    style: TextStyle(fontSize: 12),
                                                  )),
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 17.0),
                            child: Container(
                              height: 40,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (height) height1 = false;
                                        height = !height;
                                      });
                                    },
                                    child: Container(
                                      height: 37,
                                      width: 138,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(10), color: Colors.transparent),
                                      child: Center(
                                          child: Text(
                                        "Cancel",
                                        style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (height) height1 = false;
                                        height = !height;
                                      });
                                    },
                                    child: Container(
                                      height: 37,
                                      width: 138,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xffF8CA2E)),
                                      child: Center(
                                          child: Text(
                                        "Apply Filters",
                                        style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),

        /*Padding(
          padding: const EdgeInsets.only(right: 15, left: 15, top: 20),
          child: TextFormField(
            onTap: (){
              Navigator.push(context, PageTransition(
                  duration: Duration(milliseconds: 250),
                  type: PageTransitionType.bottomToTop, child: HomeSearchScreen()));

            },
            readOnly: true,
            cursorColor: Colors.black,
            decoration: InputDecoration(

              prefixIcon: Icon(Icons.search, color: Colors.black54),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: InkWell(
                  onTap: () {
                    ShowOverLay();
                    */ /*this._overlayEntry = this._createOverlayEntry();
                    Overlay.of(context)!.insert(this._overlayEntry!);*/ /*
                  },
                  child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xffFAEAAB)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(Icons.filter_list, color: Colors.black54),
                      )),
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: "Search Classes",
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
        ),*/

        SlidingSheet(
          shadowColor: Colors.white.withOpacity(0.8),
          color: Colors.white.withOpacity(0.8),
          headerBuilder: buildHeader,
          closeOnBackdropTap: true,
          closeOnBackButtonPressed: true,
          addTopViewPaddingOnFullscreen: true,
          isBackdropInteractable: true,
          //backdropColor: Colors.white.withOpacity(0.8),
          elevation: 8,
          cornerRadius: 16,
          snapSpec: const SnapSpec(
            initialSnap: 0.7,
            // Enable snapping. This is true by default.
            // Set custom snapping points.
            snappings: [0.2, 0.7, 1.0],
            // Define to what the snappings relate to. In this case,
            // the total available space that the sheet can expand to.
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          // The body widget will be displayed under the SlidingSheet
          // and a parallax effect can be applied to it.
          /*body: Center(
            child: Text('This widget is below the SlidingSheet'),
          ),*/
          builder: (context, state) {
            // This is the content of the sheet that will get
            // scrolled, if the content is bigger than the available
            // height of the sheet.
            return Column(
              children: [
                DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Color(0xffFCEAAB),
                  selectedTextColor: Colors.white,
                  //dayTextStyle: TextStyle(color: Colors.transparent),

                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      _selectedValue = date;
                      TestClass.fromJsonHistory(
                          list!, DateTime(_selectedValue.year, _selectedValue.month, _selectedValue.day, _selectedValue.hour, 0, 0, 0, 0));
                    });
                  },
                ),
                /*Container(
                    height: media.height,
                    width: media.width,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: bottomModel.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Card(
                                //margin: EdgeInsets.all(5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 12),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            bottomModel[index].pic,
                                            height: 140,
                                            width: 150,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 20.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Laoshe',
                                                      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                                                    ),
                                                    SizedBox(width: 50,),

                                                    Icon(Icons.favorite_border)
                                                  ],
                                                ),
                                                SizedBox(height: 8,),
                                                Text(
                                                  "Elava Valley Yoga",
                                                  style: GoogleFonts.poppins(fontSize: 16),
                                                ),
                                                SizedBox(height: 8,),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "4.2",
                                                      style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700),
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      size: 15,
                                                    ),
                                                    Text(
                                                      "(14)",
                                                      style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '2 Credits',
                                        style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "10km away from you",
                                            style: GoogleFonts.poppins(fontSize: 12),
                                          ),
                                          SizedBox(
                                            width: media.width * 0.32,
                                          ),
                                          InkWell(
                                            onTap: (){
                                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ClassDetail()));
                                            },
                                            child: Text(
                                              "View",
                                              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          );
                        }),
                  ),*/

                Container(
                  child: SingleChildScrollView(
                    child: Column(
                        children: testClass!.data!
                            .map((e) => Stack(
                                  children: [
                                    Positioned(
                                      top: 40,
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              DateFormat("hh:mm\na").format(DateTime.parse(e.items!.first.groupby!)),
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.bold),
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45.0, right: 8),
                                      child: Column(
                                        children: e.items!
                                            .map((e) => Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    SizedBox(
                                                      height: 15,
                                                    ),
                                                    Card(
                                                      //margin: EdgeInsets.all(5),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(22.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 12, top: 10),
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(30)),
                                                                  child: ClipRRect(
                                                                    borderRadius: BorderRadius.circular(20),

                                                                    /*child: CachedNetworkImage(
                                                                     fit: BoxFit.cover,
                                                                     imageUrl: "https://s35691.pcdn.co/wp-content/uploads/2015/08/iStock_lecture-hall_Medium-150902.jpg",
                                                                     placeholder: (context, url) => Image.network(e.image!,height: 80, width: 120, fit: BoxFit.cover,),
                                                                     errorWidget: (context, url, error) => Icon(Icons.error,size: 20,color: Colors.black,),
                                                                   ),*/

                                                                    child: Image.network(
                                                                      e.image!,
                                                                      height: 80,
                                                                      width: 120,
                                                                      fit: BoxFit.cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 10,
                                                                ),
                                                                Expanded(
                                                                  child: Container(
                                                                    child: Padding(
                                                                      padding: const EdgeInsets.only(
                                                                        bottom: 10.0,
                                                                      ),
                                                                      child: Column(
                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                e.name!,
                                                                                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                                                                              ),
                                                                              Spacer(),
                                                                              Icon(Icons.favorite_border)
                                                                            ],
                                                                          ),
                                                                          SizedBox(
                                                                            height: 8,
                                                                          ),
                                                                          Text(
                                                                            "Elava Valley Yoga",
                                                                            style: GoogleFonts.poppins(fontSize: 12),
                                                                          ),
                                                                          SizedBox(
                                                                            height: 8,
                                                                          ),
                                                                          Row(
                                                                            children: [
                                                                              Text(
                                                                                "4.2",
                                                                                style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w700),
                                                                              ),
                                                                              SizedBox(
                                                                                width: 4,
                                                                              ),
                                                                              Icon(
                                                                                Icons.star,
                                                                                size: 15,
                                                                              ),
                                                                              SizedBox(
                                                                                width: 10,
                                                                              ),
                                                                              Text(
                                                                                "(14)",
                                                                                style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w700),
                                                                              ),
                                                                            ],
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Text(
                                                              "${e.credit.toString()} £",
                                                              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                                                            ),
                                                            Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              children: [
                                                                Text(
                                                                  "10km away from you",
                                                                  style: GoogleFonts.poppins(fontSize: 12),
                                                                ),
                                                                InkWell(
                                                                  onTap: () {
                                                                    Navigator.of(context)
                                                                        .push(MaterialPageRoute(builder: (context) => ClassDetail()));
                                                                  },
                                                                  child: Text(
                                                                    "View",
                                                                    style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                                                                  ),
                                                                ),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ))
                                            .toList(),
                                      ),
                                    ),
                                  ],
                                ))
                            .toList()),
                  ),
                ),
                /*TimelineTile(
                    isFirst: true,
                    isLast: true,
                    alignment: TimelineAlign.start,
                    indicatorStyle: IndicatorStyle(
                      indicator: Align(
                         alignment: AlignmentDirectional.topStart,
                          child: Container(color: Colors.grey ,child: Text((DateTime.now().hour).toString()))),
                      //iconStyle: IconStyle(iconData: IconData()),
                      width: 40,
                      color: Colors.green
                    ),
                    endChild: Container(
                    height: media.height,
                    width: media.width,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Text((DateTime.now().hour).toString()),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Card(
                                    //margin: EdgeInsets.all(5),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 12),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                bottomModel[index].pic,
                                                height: 140,
                                                width: 120,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 20.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Laoshe',
                                                          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                                                        ),
                                                        SizedBox(width: 30,),

                                                        Icon(Icons.favorite_border)
                                                      ],
                                                    ),
                                                    SizedBox(height: 8,),
                                                    Text(
                                                      "Elava Valley Yoga",
                                                      style: GoogleFonts.poppins(fontSize: 12),
                                                    ),
                                                    SizedBox(height: 8,),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "4.2",
                                                          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700),
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          size: 15,
                                                        ),
                                                        Text(
                                                          "(14)",
                                                          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '2 Credits',
                                            style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.bold),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "10km away from you",
                                                style: GoogleFonts.poppins(fontSize: 12),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ClassDetail()));
                                                },
                                                child: Text(
                                                  "View",
                                                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          );
                        }),
                  ),
                  ),*/

                /* ListView(children: ['04:00', '04:40', '5:00'].map((e) => Row(
                    children: [
                      Text((DateTime.now().hour).toString()),
                      Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Card(

                            //margin: EdgeInsets.all(5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        bottomModel[0].pic,
                                        height: 140,
                                        width: 120,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 20.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  'Laoshe',
                                                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                                                ),
                                                SizedBox(width: 30,),

                                                Icon(Icons.favorite_border)
                                              ],
                                            ),
                                            SizedBox(height: 8,),
                                            Text(
                                              "Elava Valley Yoga",
                                              style: GoogleFonts.poppins(fontSize: 16),
                                            ),
                                            SizedBox(height: 8,),
                                            Row(
                                              children: [
                                                Text(
                                                  "4.2",
                                                  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 15,
                                                ),
                                                Text(
                                                  "(14)",
                                                  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '2 Credits',
                                    style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "10km away from you",
                                        style: GoogleFonts.poppins(fontSize: 12),
                                      ),
*/
                /*SizedBox(
                                                width: media.width * 0.32,
                                              ),*/
/*                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ClassDetail()));
                                        },
                                        child: Text(
                                          "View",
                                          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )).toList(),)*/
              ],
            );
          },
        ),

        /*Positioned(
          bottom: 5,
          child: Container(
            height: media.height * 0.30,
            width: media.width / 1,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: bottomModel.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    //margin: EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 12),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                bottomModel[index].pic,
                                height: 140,
                                width: 150,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Elava Valley Yoga",
                                    style: GoogleFonts.poppins(fontSize: 16),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "4.2",
                                        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                      ),
                                      Text(
                                        "(14)",
                                        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "10km away from you",
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                              SizedBox(
                                width: media.width * 0.32,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ClassDetail()));
                                },
                                child: Text(
                                  "View",
                                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        )*/
      ],
    )));
  }

  /*OverlayEntry _createOverlayEntry() {
    RenderBox? renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    var offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
        builder: (context) => Positioned(
              left: offset.dx,
              top: offset.dy + size.height + 5.0,
              width: size.width,
              child: Material(elevation: 4.0, child: Card()),
            ));
  }*/

  /*ShowOverLay() async {
    RenderBox? renderBox = context.findRenderObject() as RenderBox;
  var size = renderBox.size;
  var offset = renderBox.localToGlobal(Offset.zero);
    OverlayState? overlayState = Overlay.of(context);

    overlayEntry = OverlayEntry(
        builder: (context) => Positioned(
            top: 50.0,
            left: 15,
            right: 15,
          */ /* left: offset.dx,
        top: offset.dy + size.height + 5.0,*/ /*
        width: size.width,
            child: Material(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.search),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Yoga",
                              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Container(
                              height: 44,
                              width: 42,
                              decoration: BoxDecoration(color: Color(0xffFAEAAB), borderRadius: BorderRadius.circular(50)),
                              child: Image.asset("assets/filter_image.png"),
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Filter Your Search',
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Radius',
                            style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            'Km',
                            style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      StatefulBuilder(
                        builder: (context, _) {
                          return Slider(
                            value: value,
                            min: 0,
                            max: 100,
                            onChanged: (value) => setState(() {
                              this.value = value;
                            }),
                          );
                        },
                      )
                    ],
                  )),
            )));
    overlayState!.insert(overlayEntry!);
    await Future.delayed(Duration(seconds: 5)).whenComplete(() => overlayEntry!.remove());
  }*/

  Widget buildHeader(BuildContext context, SheetState state) => Material(
        child: Container(
          color: Colors.white.withOpacity(0.1),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 16,
              ),
              Center(
                child: Container(
                  width: 40,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      );
}
