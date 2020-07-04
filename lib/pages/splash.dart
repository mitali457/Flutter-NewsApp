import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutternewsapp/pages/onboardingflow.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }
  startTime() async {
    var _duration = Duration(seconds: 4);
     Timer(_duration, 
     () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => OnbordingFlow())));
  }
  void navigationPage() async {
    print('Welcom to splash screen');
  }

 @override
  Widget build(BuildContext context) {
    return Container(
      
     
        decoration: BoxDecoration(
          color: Colors.blue[700],
      image: DecorationImage(
        image: AssetImage("assets/group.png"),
         //fit: BoxFit.fill
         ),
    ));
  }
}