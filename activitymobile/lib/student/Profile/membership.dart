import 'package:activitymobile/student/Profile/all_membership_plans.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors.dart';
import 'Models/membership_model.dart';

class MemberShip extends StatefulWidget {
  const MemberShip({Key? key}) : super(key: key);

  @override
  _MemberShipState createState() => _MemberShipState();
}

class _MemberShipState extends State<MemberShip> {
  List<OneTimeMemberShipModel> memberShip = [
    OneTimeMemberShipModel(title: '8 Credits', subTitle2: 'Book up to 2 experiences', subTitle: '\$1.00'),
    OneTimeMemberShipModel(title: '23 Credits', subTitle2: 'Book up to 2 experiences', subTitle: '\$5.00'),
    OneTimeMemberShipModel(title: '38 Credits', subTitle2: 'Book up to 2 experiences', subTitle: '\$5.00'),
    OneTimeMemberShipModel(title: '80 Credits', subTitle2: 'Book up to 2 experiences', subTitle: '\$5.00')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 10, right: 15, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(
                  "Membership",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                  /*InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OneTimeMembershipScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: cColor().green,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text('One Time Buy',style: GoogleFonts.poppins(fontSize: 12, color: Colors.white,fontWeight: FontWeight.bold),)),

                      height: 35,
                      width: 120,
                    ),
                  ),*/
              ],),
              Center(
                child: Image.asset(
                  "assets/credits.png",
                  height: 330,
                  width: 330,
                ),
              ),
              Text(
                "Buy one time credits without changing your monthly plan. You can roll over up to 50 unused credits.",
                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: memberShip.length,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      elevation: 2,
                      child: ListTile(
                        leading: Image.asset("assets/coin.png"),
                        title: Text(
                          memberShip[index].title,
                          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              memberShip[index].subTitle + " /month",
                              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              memberShip[index].subTitle2,
                              style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600, color: cColor().green),
                            )
                          ],
                        ),
                        trailing: Container(
                          decoration: BoxDecoration(color: cColor().green, borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
                            child: Text(
                              "Buy",
                              style: GoogleFonts.poppins(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
