import 'package:flutter/material.dart';

class Onboarding3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        
        children: <Widget>[
          SizedBox(height:86),
                Stack(
                  children: [
                    Image.asset("assets/bg2.png"),

                    Padding(
                      padding: const EdgeInsets.only(top:20,left:20),
                      child: Image.asset("assets/screen3.png"),
                    )
                  ],
                  

                ),
                SizedBox(height:32),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                  Text(" WELCOME",
                  style: TextStyle(fontSize:21,
                  color:Colors.blueGrey,
                  fontWeight:FontWeight.w500),),
                  Text("Absolute\npleasure to\nhave you",style: TextStyle(fontSize:44,
                  color:Colors.black,
                  fontWeight:FontWeight.bold),),
                 
                  
                  
                   ]),
                   // SizedBox(height:36),
                   Padding(
                     padding: const EdgeInsets.only(top:40),
                     child: Container(
                       width: 380,
                       height: 80,
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: FlatButton(
                          
                           color: Colors.black,
                           shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                           onPressed:() {
                             Navigator.of(context).pushNamed("/login");
                           }, 
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text(" Get Started",style: TextStyle(fontSize:26,
                  color:Colors.white,
                  fontWeight:FontWeight.bold),),
                  SizedBox(width:5),
                  Icon(Icons.arrow_forward_ios,
                  color: Colors.white,)
                             
                           ],
                         )),
                       ),
                     ),
                   )
                   
                ]
        ),
        
      ),
    );
    
  }
  
}