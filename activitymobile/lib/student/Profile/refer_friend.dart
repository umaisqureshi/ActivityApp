import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Models/Refer_Model.dart';

class ReferFriend extends StatefulWidget {
  const ReferFriend({Key? key}) : super(key: key);

  @override
  _ReferFriendState createState() => _ReferFriendState();
}

class _ReferFriendState extends State<ReferFriend> {
  List<ReferModel> referModel = [
    ReferModel(subtitle: 'Contact', pic: 'assets/nprofile.png', title: 'Canlar'),
    ReferModel(subtitle: 'Contact', pic: 'assets/pic1.png', title: 'Carry Minati'),
    ReferModel(subtitle: 'Contact', pic: 'assets/pic2.png', title: 'Can Yaman')
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Refer a friend",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Text(
                  "And you can both fast pace your learning",
                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  color: Color(0xffFBE496),
                  margin: EdgeInsets.only(top: 20,bottom: 20,right: 20,left: 20),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 35,bottom: 35),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "+ 10",
                              style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                            Image.asset(
                              "assets/coin.png",
                              height: 45,
                              width: 45,
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Credits",
                          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 5,),

                        Text(
                          "120 Contacts, 2 Credits per activation",
                          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                        ),

                      ],
                    ),
                  ),
                ),
                Text(
                  "I refer now!",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(top: 12,right: 20),
                          child: Text("Copy", style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),),
                        ),
                        fillColor: Colors.grey,
                        hintText: "dhgfvlzsfvbkshvklgfzhfcadt",
                        hintStyle: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder:
                        const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25)), borderSide: BorderSide(color: Colors.white)),
                        contentPadding: EdgeInsets.only(top: 20, bottom: 10, left: 10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  "Share your link",
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/insta.png", height: 50, width: 50,),
                    Image.asset("assets/twitter.png", height: 50, width: 50,),
                    Image.asset("assets/whatsapp.png", height: 50, width: 50,),
                    Image.asset("assets/fb.png", height: 50, width: 50,),
                    Image.asset("assets/dot.png", height: 50, width: 50,),
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search, color: Colors.black54),
                      fillColor: Colors.grey,
                      hintText: "Search by name",
                      hintStyle: GoogleFonts.poppins(fontSize: 14, color: Colors.black54),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.black54),
                      ),
                      enabledBorder:
                      const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide(color: Colors.black54)),
                      contentPadding: EdgeInsets.only(top: 20, bottom: 10, left: 10),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                ListView.builder(
                    itemCount: referModel.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index){
                      return ListTile(
                        leading: Image.asset(referModel[index].pic),
                        title: Text(referModel[index].title,style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),),
                        subtitle: Text(referModel[index].subtitle,style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),),
                        trailing: InkWell(
                          onTap: () {
                            /*Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Createaccount()));*/
                          },
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xffFBE496)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15, bottom: 15, left:  20,right: 20),
                              child: Icon(Icons.add)
                            ),
                          ),
                        ),
                      );

                    }),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
