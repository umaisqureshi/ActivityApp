import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'class_detail.dart';

class HomeSearchScreen extends StatefulWidget {
  const HomeSearchScreen({Key? key}) : super(key: key);

  @override
  _HomeSearchScreenState createState() => _HomeSearchScreenState();
}

class _HomeSearchScreenState extends State<HomeSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey),

                ),

                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Icon(Icons.arrow_back,size: 24,)),
                    ),
                    SizedBox(width: 20,),
                    Text('Yoga',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 18))
                  ],
                ),

              ),
              SizedBox(height: 10,),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)
                ),

                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Icon(Icons.location_on,size: 24,),
                    ),
                    SizedBox(width: 20,),
                    Text('United Kingdom',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 18))
                  ],
                ),

              ),
              SizedBox(height: 20,),
              Text("Nearby",style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 18)),
              SizedBox(height: 5,),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context,index){
                    return ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ClassDetail()));
                      },
                      leading: Transform.translate(
                        offset: Offset(-18,0),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/earl-wilcox-7ZK_CuHroq4-unsplash.png"),
                        ),
                      ),
                      title: Transform.translate(
                          offset: Offset(-20, 0),
                          child: Text('Empower Fitness Faith',style: GoogleFonts.poppins(fontSize: 14),)),
                      subtitle: Transform.translate(
                          offset: Offset(-20, 0),
                          child: Text('54.2 km',style: GoogleFonts.poppins(fontSize: 12),)),
                    );
                  }),
                ),
              )
            ],

          ),
        ),
      ),
    );
  }
}
