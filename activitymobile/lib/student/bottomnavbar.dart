import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../slivver.dart';
import 'Home/main_screen.dart';
import 'Profile/all_membership_plans.dart';
import 'Search/search.dart';
import 'Upcoming/upcoming.dart';

ValueNotifier<bool> calNotifier = ValueNotifier<bool>(false);
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  bool cal = false;
  final PageController _pageController = PageController();


  @override
  void initState() {
   calNotifier.addListener(() {
     setState(() {
       cal = calNotifier.value;
     });
   });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        dragStartBehavior: DragStartBehavior.down,
        controller: _pageController,
        onPageChanged: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        children: const [
          Home(),
          //:Calender(),
          Search(),
          AllMemberShipPlans(),
          //AddCredit(),
          Upcoming(),
          //Profile(),
          Latest()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/home.png",
                height: 18,
                color: Colors.black54,
              ),
              activeIcon: Image.asset("assets/home.png", height: 22),
              label: "Home",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Image.asset("assets/search.png", height: 17),
              activeIcon: Image.asset(
                "assets/search.png",
                height: 22,
                color: Colors.black,
              ),
              label: "Search",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Image.asset("assets/Icon material-favorite-border.png", height: 17),
              activeIcon: Image.asset("assets/black.png", height: 22),
              label: "Add Credit",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Image.asset("assets/calendar.png", height: 18),
              activeIcon: Image.asset(
                "assets/calendar.png",
                height: 22,
                color: Colors.black,
              ),
              label: "Upcoming",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Image.asset("assets/user.png", height: 18),
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
            _pageController.animateToPage(index, duration: const Duration(milliseconds: 250), curve: Curves.ease);
          });
        },
      ),
    );
  }
}
