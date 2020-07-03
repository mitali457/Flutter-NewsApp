import 'package:flutter/material.dart';
import 'package:flutternewsapp/pages/home.dart';
import 'package:flutternewsapp/pages/likes.dart';
import 'package:flutternewsapp/pages/login.dart';
import 'package:flutternewsapp/pages/onboarding2.dart';
import 'package:flutternewsapp/pages/onboarding3.dart';
import 'package:flutternewsapp/pages/profile.dart';
import 'package:flutternewsapp/pages/settings.dart';
import 'package:flutternewsapp/pages/signup.dart';


import 'onboarding1.dart';

class OnbordingFlow extends StatefulWidget {
  @override
  _OnbordingFlowState createState() => _OnbordingFlowState();
  
}

class _OnbordingFlowState extends State<OnbordingFlow > {
  PageController _controller = PageController(
  initialPage: 0,
  
);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
            controller:_controller,
              onPageChanged: (page) {
                print(page);
              },
              children: <Widget>[Onboarding1(), Onboarding2()],
              scrollDirection: Axis.horizontal,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(48.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 12,
                      width: 12,
                      decoration: new BoxDecoration(
                        border: Border.all(),
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width:5),
                Container(
                  height: 12,
                                    width: 12,

                  decoration: new BoxDecoration(
                    border: Border.all(),
                    shape: BoxShape.circle,
                  ),
                ),
                  ],
                ),
                
                // SizedBox(width:200),
                GestureDetector(
                  onTap: (){
                    if(_controller.page==1)
                    Navigator.of(context).pushNamed("/onboarding");
                    else
                   _controller.nextPage(duration: Duration(milliseconds: 100), curve: Curves.easeIn)
                   ;
                  },
                  child: Image.asset("assets/icon.png",)
                  )
               
                    // border: Border.all(),
                    // shape: BoxShape.circle,
                  
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
