import 'package:activitymobile/student/Profile/all_membership_plans_with_cancel_button.dart';
import 'package:activitymobile/student/addCredit/add_credit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bottomnavbar.dart';
import 'Models/membership_model.dart';
import 'all_membership_plans.dart';

class MembershipExteded extends StatefulWidget {
  const MembershipExteded({Key? key}) : super(key: key);

  @override
  _MembershipExtededState createState() => _MembershipExtededState();
}

class _MembershipExtededState extends State<MembershipExteded> {

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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Text(
                      "Membership",
                      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
              ),
              const SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  width: double.infinity,
                  child: Card(
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.black, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                          height: 110,
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                              child: Image.asset(
                                "assets/g2.png",
                                height: 130,
                                width: double.infinity,

                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'How Credits Works',
                                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                                const SizedBox(height: 5,),
                                Text(
                                  'Every cycle you will receive new credits based on your plan. Credit values very depending on class or service, popularity and more but Activity gets you the best rates available',style: GoogleFonts.poppins(fontSize: 13),textAlign: TextAlign.justify,),
                                SizedBox(height: 20,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        elevation: 2.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(8)

                                    ),

                                    height: 50,
                                    width: 50,
                                    child: ClipRRect(
                                        borderRadius: const BorderRadius.only(topRight: Radius.circular(8)),
                                        child: Image.asset('assets/splash.png')),
                                  ),
                                  const SizedBox(width: 15,),
                                  Expanded(
                                    child: SizedBox(
                                      height: 50,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('50 credit plan',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.bold),),
                                          Text('70 credits left',style: GoogleFonts.poppins(fontSize: 14,color: Colors.grey),)
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 8,),
                              Text('Renews January 2, 29 days remaining',style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey,),),
                              Text.rich(
                                TextSpan(
                                  text: 'Roll Over',
                                  style: GoogleFonts.poppins(fontSize: 14, color: Colors.black,decoration: TextDecoration.underline, ),
                                  children: const <TextSpan>[
                                    TextSpan(text: '  ',style: TextStyle(
                                  decoration: TextDecoration.none,
                                )),
                                    TextSpan(
                                        text: 'up to 50 unused credits',
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          color: Colors.grey
                                        )),
                                    // can add more TextSpans here...
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Container(
                                height: 60,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.3 ),
                                  borderRadius: BorderRadius.circular(10)
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Image.asset('assets/congrajulation_image.png', width: 25, height: 25,),
                                      ),
                                      SizedBox(width: 10,),

                                      Container(
                                          width: 250,
                                          child: Text('We found a plan that might work better for you',style: GoogleFonts.poppins(),)),

                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => AllMembershipPlansWithCancelButton()));
                                },
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(child: Text('See Plan Options')),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Center(child: Text('or')),
                              SizedBox(height: 5,),

                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddCredit()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey)
                                  ),
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(child: Text('Add one-time Credits',style: GoogleFonts.poppins(),)),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20,)
                            ]),

                          ),
                        ),
                      ),

            ],
          ),
        ),
      ),
    );
  }
}
