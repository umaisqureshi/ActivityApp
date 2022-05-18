import 'package:activitymobile/student/Profile/favourite.dart';
import 'package:activitymobile/student/Profile/friends.dart';
import 'package:activitymobile/student/Profile/membership.dart';
import 'package:activitymobile/student/Profile/membership_extended.dart';
import 'package:activitymobile/student/Profile/all_membership_plans.dart';
import 'package:activitymobile/student/Profile/settings.dart';
import 'package:activitymobile/student/addCredit/add_credit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Latest extends StatefulWidget {
  const Latest({Key? key}) : super(key: key);

  @override
  _LatestState createState() => _LatestState();
}

class _LatestState extends State<Latest> {

  final ScrollController _sliverScrollController = ScrollController();
  var offset = 1.0;

  @override
  void initState() {
    super.initState();

    _sliverScrollController.addListener(() {
      setState(() {
          offset = _sliverScrollController.offset>430.0?kToolbarHeight:1.0;
      });
   /*   if (!isPinned &&
          _sliverScrollController.hasClients &&
          _sliverScrollController.offset > kToolbarHeight) {
        setState(() {
          isPinned = true;
        });
      } else if (isPinned &&
          _sliverScrollController.hasClients &&
          _sliverScrollController.offset < kToolbarHeight) {
        setState(() {
          isPinned = false;
        });
      }*/
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(" tabsHeader  ${tabs.maxExtent} ${tabs.minExtent}");
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: DefaultTabController(
          length: 3,
          child: CustomScrollView(
            controller: _sliverScrollController,
           slivers: [
             SliverPadding(
               padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
               sliver: SliverAppBar(
                 floating: false,
                 pinned: false,
                 backgroundColor: Colors.transparent,
                 elevation: 0,
                 automaticallyImplyLeading: false,
                 collapsedHeight: 400,
                 flexibleSpace: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       "Profile",
                       style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                     ),
                     SizedBox(
                       height: 20,
                     ),
                     Row(
                       children: [
                         Stack(
                           children: [
                             CircleAvatar(radius: 70, backgroundColor: Colors.transparent, child: Image.asset("assets/profile.png")),
                             Positioned(
                               right: 0,
                               bottom: 25,
                               child: CircleAvatar(
                                   backgroundColor: Color(0xffF1F0F0),
                                   child: Icon(
                                     Icons.camera_alt_outlined,
                                     color: Colors.black,
                                   )),
                             )
                           ],
                         ),
                         SizedBox(
                           width: 15,
                         ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(
                               "Riyan Farsad",
                               style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                             ),
                             SizedBox(
                               height: 10,
                             ),
                             Text(
                               "20 Credits remaining",
                               style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                             ),
                             Text(
                               "18 days left",
                               style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
                             ),
                           ],
                         )
                       ],
                     ),
                     const SizedBox(
                       height: 20,
                     ),
                     ListView(
                       shrinkWrap: true,
                       children: [
                         Card(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10.0),
                           ),
                           elevation: 2,
                           child: Padding(
                             padding: const EdgeInsets.only(top: 8, bottom: 8),
                             child: ListTile(
                               leading: Image.asset(
                                 "assets/setting.png",
                                 height: 30,
                                 width: 30,
                               ),
                               title: Text(
                                 "Setting",
                                 style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                               ),
                               trailing: IconButton(
                                 icon: Icon(
                                   Icons.arrow_forward_ios_sharp,
                                   size: 20,
                                 ),
                                 onPressed: () {
                                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => Settings()));
                                 },
                               ),
                             ),
                           ),
                         ),
                         /*Card(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10.0),
                           ),
                           elevation: 2,
                           child: Padding(
                             padding: const EdgeInsets.only(top: 8, bottom: 8),
                             child: ListTile(
                               leading: Image.asset(
                                 "assets/member.png",
                                 height: 30,
                                 width: 30,
                               ),
                               title: Text(
                                 "Membership",
                                 style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
                               ),
                               trailing: IconButton(
                                 icon: Icon(Icons.arrow_forward_ios_sharp, size: 20),
                                 onPressed: () {
                                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => MembershipExteded()));
                                 },
                               ),
                             ),
                           ),
                         )*/
                       ],
                     ),
                   ],
                 ),
                 //collapsedHeight: 100,
               ),
             ),
             SliverPersistentHeader(
               delegate: tabs,
               pinned: true,
             ),
             SliverFillRemaining(
               child: TabBarView(
               children: [
                 Column(
                   mainAxisSize: MainAxisSize.min,
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Image.asset(
                       "assets/oh.png",
                       height: 100,
                       width: 150,
                     ),
                     Text(
                       "You haven't taken any classes yet.\nReady to learn?",
                       style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                       textAlign: TextAlign.center,
                     ),

                     OutlinedButton(
                       style: ElevatedButton.styleFrom(
                         minimumSize: Size(size.width/2, 50.0),
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                         side: const BorderSide(color: Colors.black)
                       ),
                       onPressed: (){}, child: Text(
                       "EXPLORE",
                       style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                     ),),

                     /*InkWell(
                       onTap: () {
                         *//*Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => Createaccount()));*//*
                       },
                       child: Expanded(
                         child: Container(
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.black)),
                           child: Text(
                             "EXPLORE",
                             style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                           ),
                         ),
                       ),
                     ),*/
                   ],
                 ),
                 Favourite(pin: offset,),
                 Friends(pin: offset,),
               ],
             ),)
           ],
          ),
        ),
      ),
    );
  }

  var tabs = MySliverPersistentHeaderDelegate(
    TabBar(
        indicator: BoxDecoration(color: Color(0xffFBE496), borderRadius: BorderRadius.circular(10)),
        indicatorColor: Colors.black,
        unselectedLabelColor: Colors.black54,
        labelColor: Colors.black,
        tabs: [
          Tab(
              child: Text(
                "Past",
                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
              )),
          Tab(
              child: Text(
                "Favourite",
                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
              )),
          Tab(
              child: Text(
                "Friends",
                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
              )),
        ]),
  );

}

class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  MySliverPersistentHeaderDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => kToolbarHeight;
  @override
  double get maxExtent => kToolbarHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _tabBar,
      ),
    );
  }

  @override
  bool shouldRebuild(MySliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}