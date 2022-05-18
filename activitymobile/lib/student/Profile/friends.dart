import 'package:activitymobile/student/Profile/refer_friend.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../colors.dart';
import 'Models/friends_model.dart';
class Friends extends StatefulWidget {
  final double? pin;
  const Friends({Key? key, this.pin}) : super(key: key);

  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  List<FriendsModel> friendModel = [
    FriendsModel(title: 'Can Yaman', subtitle: 'Contact', pics: 'assets/nprofile.png'),
    FriendsModel(title: 'Can Yaman', subtitle: 'Contact', pics: 'assets/nprofile.png')
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          AnimatedContainer(height: widget.pin ,duration: Duration(milliseconds: 100),),
          TextFormField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.search, color: Colors.black54),
              hintText: "Search by name",
              hintStyle: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.black54),
              ),
              enabledBorder:
              const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)), borderSide: BorderSide(color: Colors.black54)),
              contentPadding: EdgeInsets.only(top: 35, bottom: 10, left: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          Column(
            children: friendModel.map((e) => ListTile(
              leading: Image.asset(e.pics),
              title: Text(e.title,style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),),
              subtitle: Text(e.subtitle,style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),),
              trailing: InkWell(
                onTap: () {
                  /*Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Createaccount()));*/
                },
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xffFBE496)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15, left: 32, right: 32),
                    child: Text(
                      "invited",
                      style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )).toList(),
          ),
          /*Container(
            height: 140,
            child: ListView.builder(
              itemCount: friendModel.length,
                shrinkWrap: true,
                itemBuilder: (context, index){
              return

            }),
          ),*/

          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ReferFriend()));
            },
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: cColor().yellow),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15, left: 50, right: 50),
                child: Text(
                  "Refer a friend",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
