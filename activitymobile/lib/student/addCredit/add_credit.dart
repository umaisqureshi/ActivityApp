import 'package:activitymobile/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'add_credit_model.dart';

class AddCredit extends StatefulWidget {
  const AddCredit({Key? key}) : super(key: key);

  @override
  _AddCreditState createState() => _AddCreditState();
}

class _AddCreditState extends State<AddCredit> {
  List<AddCreditModel> addCredit = [
    AddCreditModel(title: '2 Credits', subTitle2: '\$0.75 (25% OFF)', subTitle: '\$1.00'),
    AddCreditModel(title: '10 Credits', subTitle2: '\$3.50 (25% OFF)', subTitle: '\$5.00'),
    AddCreditModel(title: '25 Credits', subTitle2: '\$3.50(25% OFF)', subTitle: '\$5.00'),
    AddCreditModel(title: '25 Credits', subTitle2: '\$3.50 (25% OFF)', subTitle: '\$5.00')
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30, right: 15, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Add Credit",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Center(
                  child: Image.asset(
                    "assets/credits.png",
                    height: 330,
                    width: 330,
                  ),
                ),
                Text(
                  "Buy one time credits without changing your monthly plan. You can roll over up to 50 unused credits.",
                  style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10,),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: addCredit.length,
                    itemBuilder: (context, index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        elevation: 2,
                        child: ListTile(
                          leading: Image.asset("assets/coin.png"),
                          title: Text(
                            addCredit[index].title,
                            style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                addCredit[index].subTitle,
                                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                addCredit[index].subTitle2,
                                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: cColor().green),
                              )
                            ],
                          ),
                          trailing: Container(
                            margin: EdgeInsets.only(top:5),
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
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
