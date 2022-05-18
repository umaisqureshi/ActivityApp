import 'package:flutter/material.dart';


import 'Home/calender.dart';
import 'Home/home.dart';

import 'Manage/manage.dart';
import 'Profile/profile.dart';

import 'Wallets/wallet.dart';


class TutorNavBar extends StatefulWidget {
  const TutorNavBar({Key? key}) : super(key: key);

  @override
  _TutorNavBarState createState() => _TutorNavBarState();
}

class _TutorNavBarState extends State<TutorNavBar> {
  int _currentIndex = 0;

  final tabs = [
    TutorHome(),
    //Calender(),
    Wallet(),
    Manage(),
    TutorProfile(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/home.png",
                height: 22,
                color: Colors.black54,
              ),
              activeIcon: Image.asset("assets/home.png", height: 22),
              label: "Home",
              backgroundColor: Colors.white),

          BottomNavigationBarItem(
              icon: Image.asset("assets/Icon awesome-history@2x.png", height: 22,color: Colors.black.withOpacity(0.6),),
              activeIcon: Image.asset("assets/Icon awesome-history@2x.png", height: 22),
              label: "History",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Image.asset("assets/calendar.png", height: 22),
              activeIcon: Image.asset(
                "assets/calendar.png",
                height: 22,
                color: Colors.black,
              ),
              label: "Manage",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Image.asset("assets/user.png", height: 22),
              activeIcon: Image.asset(
                "assets/user.png",
                height: 22,
                color: Colors.black,
              ),
              label: "Profile",
              backgroundColor: Colors.white)
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
