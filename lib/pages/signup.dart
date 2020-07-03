import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:90,left:10),
            child: GestureDetector(
              onTap: (){
                 Navigator.of(context).pushNamed("/login");
              },
              child:Image.asset("assets/icon1.png",fit: BoxFit.fill,height: 50,)
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:80,left: 15),
            child: Text('Sign Up',
            style: TextStyle(fontSize:36,
                    color:Colors.black,
                    fontWeight:FontWeight.w800),),
          ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left:15),
                    child: Text('You have chance to create new\naccount if you really want to.',
            style: TextStyle(fontSize:17,
                      color:Colors.black,
                      fontWeight:FontWeight.w500),),
                  ),

         Padding(
           padding: const EdgeInsets.only(left:15),
           child: Container(
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      
                      width: MediaQuery.of(context).size.width/1.2,
                      height: 45,
                      padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5
                          )
                        ]
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.email,
                              color: Colors.blueGrey,
                          ),
                            hintText: 'Full Name',
                        ),
                      ),
                    ),
                    SizedBox(height:30),
                    Container(
                      
                      width: MediaQuery.of(context).size.width/1.2,
                      height: 45,
                      padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5
                          )
                        ]
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.email,
                              color: Colors.blueGrey,
                          ),
                            hintText: 'Email',
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      height: 45,
                      margin: EdgeInsets.only(top: 32),
                      padding: EdgeInsets.only(
                          top: 4,left: 16, right: 16, bottom: 4
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(),
                          borderRadius: BorderRadius.all(
                              Radius.circular(10)
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5
                            )
                          ]
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.vpn_key,
                            color: Colors.blueGrey,
                          ),
                          hintText: 'Password',
                        ),
                      ),
                    ),

                   
                    
                SizedBox(height:40),
                    FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed:() {
                      

                      },
                      child:Image.asset("assets/signup.png",fit: BoxFit.fill,width: MediaQuery.of(context).size.width/1.2,),
                        ),
                     
                       SizedBox(height:30),
                           Padding(
                             padding: const EdgeInsets.only(left:1),
                             child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                             Text("Already have account?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.w600)),
                        // SizedBox(width:3),
                          
                          FlatButton(
                              padding: EdgeInsets.all(0),
                              onPressed: () {
                      Navigator.of(context).pushNamed("/login");
                              },
                              child: Text('Go here ',
                                  style: TextStyle(
                                      color: Colors.red[800],
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                          ),
                        ]),
                           )
                  ],
                ),
              ),
         )
        ]
      ),

    );
  }
}