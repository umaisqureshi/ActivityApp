import 'package:activitymobile/student/create_account/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors.dart';
import 'home1.dart';
import 'main_screen.dart';
class Replace extends StatefulWidget {
  const Replace({Key? key}) : super(key: key);

  @override
  _ReplaceState createState() => _ReplaceState();
}
int _myindex = 0;

class _ReplaceState extends State<Replace> {

  final _mywidgets = [
    Home1(),
    Home(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _mywidgets.elementAt(_myindex),
    );
  }
}
