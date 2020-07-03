import 'package:flutter/material.dart';

import 'package:flutternewsapp/route/routes.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
       routes: Routes.getRoutes(),
            initialRoute: '/',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
        
      ),
      debugShowCheckedModeBanner: false,
    //home: OnbordingFlow (),
    );
  }
}

