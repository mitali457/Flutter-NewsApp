import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        
        children: <Widget>[
          SizedBox(height:86),
                Stack(
                  children: [
                    Image.asset("assets/bg1.png"),

                    Padding(
                      padding: const EdgeInsets.only(top:20,left:20),
                      child: Image.asset("assets/screen1.png"),
                    )
                  ],
                  

                ),
                SizedBox(height:32),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                  Text(" News",
                  style: TextStyle(fontSize:36,
                  color:Colors.black,
                  fontWeight:FontWeight.bold),),
                  Text("everywhere",style: TextStyle(fontSize:36,
                  color:Colors.black,
                  fontWeight:FontWeight.bold),),
                  SizedBox(height:26),
                  Text(' It’s important that we have\n news everywhere. It’s critical \nto know its authenticity ',
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