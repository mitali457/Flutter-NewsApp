import 'package:flutter/material.dart';

class Onboarding2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        
        children: <Widget>[
          SizedBox(height:86),
                Stack(
                  children: [
                    Image.asset("assets/bg.png"),

                    Padding(
                      padding: const EdgeInsets.only(top:20,left:20),
                      child: Image.asset("assets/screen2.png"),
                    )
                  ],
                  

                ),
                SizedBox(height:32),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                  Text(" It’s fresh and\n thrilling",
                  style: TextStyle(fontSize:36,
                  color:Colors.black,
                  fontWeight:FontWeight.bold),),
                  
                  SizedBox(height:26),
                  Text('  It’s very important to know that the news you consume is fresh and authentic ',
                  style: TextStyle(fontSize:21,
                  color:Colors.black,
                  fontWeight:FontWeight.w500),
                  )
                   ]),
                   
                ]
        ),
        
      ),
    );
    
  }
  
}