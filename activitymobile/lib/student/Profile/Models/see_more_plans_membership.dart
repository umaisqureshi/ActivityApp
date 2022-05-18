import 'package:activitymobile/student/addCredit/add_credit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bottomnavbar.dart';
import 'membership_model.dart';

class SeeMorePlansMembership extends StatefulWidget {
  const SeeMorePlansMembership({Key? key}) : super(key: key);

  @override
  _SeeMorePlansMembershipState createState() => _SeeMorePlansMembershipState();
}

class _SeeMorePlansMembershipState extends State<SeeMorePlansMembership> {

  List<MemberShipModel> oneTimeMemberShip = [
    MemberShipModel(title: 'Includes 1 Credits to', subTitle: 'Book up to 2 experiences', price: '\$0', buttonText: 'Free'),
    MemberShipModel(title: 'Includes 9 Credits to', subTitle: 'Book up to 3 experiences', price: '\$15', buttonText: 'Select This Plan'),
    MemberShipModel(title: 'Includes 4 Credits to', subTitle: 'Book up to 5 experiences', price: '\$34', buttonText: 'Select This Plan'),
    MemberShipModel(title: 'Includes 7 Credits to', subTitle: 'Book up to 6 experiences', price: '\$56', buttonText: 'Select This Plan'),
    MemberShipModel(title: 'Includes 5 Credits to', subTitle: 'Book up to 8 experiences', price: '\$89', buttonText: 'Select This Plan'),
    MemberShipModel(title: 'Includes 6 Credits to', subTitle: 'Book up to 9 experiences', price: '\$34', buttonText: 'Select This Plan'),
    MemberShipModel(title: 'Includes 3 Credits to', subTitle: 'Book up to 4 experiences', price: '\$65', buttonText: 'Select This Plan'),
    MemberShipModel(title: 'Includes 7 Credits to', subTitle: 'Book up to 9 experiences', price: '\$90', buttonText: 'Select This Plan'),
    MemberShipModel(title: 'Includes 2 Credits to', subTitle: 'Book up to 8 experiences', price: '\$34', buttonText: 'Select This Plan'),
    MemberShipModel(title: 'Includes 6 Credits to', subTitle: 'Book up to 2 experiences', price: '\$56', buttonText: 'Select This Plan'),
  ];

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        /* appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),*/
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Membership",
                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddCredit()));
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(color: Color(0xffFAEAAB), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              'One Time Membership',
                              style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Container(
                  child: GridView.builder(
                      itemCount: oneTimeMemberShip.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              elevation: 2.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    oneTimeMemberShip[index].price!,
                                    style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'PER MONTH',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    oneTimeMemberShip[index].title!,
                                    style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                    child: Text(
                                      oneTimeMemberShip[index].subTitle!,
                                      style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      print('pressed');
                                      if (oneTimeMemberShip[index].buttonText == 'Free') {
                                        print('hello');
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar()));
                                      } else {
                                        print('nothing');
                                      }
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Container(
                                        height: 40,
                                        decoration: BoxDecoration(color: Color(0xffF8CA2E), borderRadius: BorderRadius.circular(10)),
                                        child: Center(
                                            child: Text(
                                              oneTimeMemberShip[index].buttonText!,
                                              style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.bold),
                                            )),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ));
                      }),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(
                            "AlertDialogue!",
                            style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          content: Text(
                            "Would you like to cancel the Membership?",
                            style: GoogleFonts.poppins(fontSize: 16),
                          ),
                          actions: <Widget>[
                            FlatButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              child: Text(
                                "Cancel",
                                style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                            FlatButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              /*Navigator.of(context).pop(true)*/
                              child: Text("Continue", style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 14)),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Container(
                      color: Color(0xffF8CA2E),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Center(
                            child: Text(
                              'Cancel Membership',
                              style: GoogleFonts.poppins(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
