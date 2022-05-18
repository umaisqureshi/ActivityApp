import 'dart:async';

import 'package:activitymobile/student/bottomnavbar.dart';
import 'package:activitymobile/splash_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {



  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with ChangeNotifier {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  getHomeSetting(){
    //call pref
  //  calNotifier.value = get from pref
  //  calNotifier.notifyListeners();
  }

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if(snapshot.hasError){
          return Container();
        }
        if(snapshot.connectionState == ConnectionState.done){
          FirebaseFirestore.instance.settings = Settings(
            persistenceEnabled: true,
            cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED,
          );
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: WelcomeScreen(),
          );

        }

        return Center(child: CircularProgressIndicator());

      }
    );
  }
}
