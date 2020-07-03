import 'package:flutter/material.dart';


import 'package:flutternewsapp/pages/likes.dart';
import 'package:flutternewsapp/pages/login.dart';
import 'package:flutternewsapp/pages/newsdetails.dart';
import 'package:flutternewsapp/pages/onboarding3.dart';
import 'package:flutternewsapp/pages/onboardingflow.dart';
import 'package:flutternewsapp/pages/profile.dart';
import 'package:flutternewsapp/pages/settings.dart';
import 'package:flutternewsapp/pages/signup.dart';
import 'package:flutternewsapp/pages/splash.dart';
import 'package:flutternewsapp/widgets/custombottomnavigationbar.dart';

class Routes {
  static final _appRoutes = {
    '/': (BuildContext context) => SplashScreen(),
    
    '/register': (BuildContext context) => Signup(),
    
    '/login': (BuildContext context) => Login(),
    
    
    '/home': (BuildContext context) => CustomBottomNavigationBar(),
    '/likes':(BuildContext context) => LikePage(),
    '/profile':(BuildContext context) => ProfilePage(),
    '/settings':(BuildContext context) => Settings(),
    '/onboarding3':(BuildContext context) => OnbordingFlow(),
    '/onboarding':(BuildContext context) => Onboarding3(),
    '/news':(BuildContext context)=>NewsDetails()
    


    
    
  };

  static getRoutes() {
    return _appRoutes;
  }
}