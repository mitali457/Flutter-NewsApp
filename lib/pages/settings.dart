import 'package:flutter/material.dart';

class Settings extends StatefulWidget{

@override
  _SettingsState createState() => _SettingsState();

}
class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
    Column(
     
      children: <Widget>[
       Padding(
         padding: const EdgeInsets.only(left:40,top:80),
         child: Text("Settings",style: TextStyle(fontSize:36,
                  color:Colors.black,
                  fontWeight:FontWeight.bold),),
       ),
         SizedBox(height:20), 
       SingleChildScrollView(
          child: Column(
          children: <Widget>[
            Card(
              child: Container(
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Happiness',style: TextStyle(fontSize:36,
                      color:Colors.white,
                      fontWeight:FontWeight.bold),
                          ),
                          SizedBox(height:10),
                          Text('Search for Bitcoin related news\nonly here!',style: TextStyle(fontSize:16,
                  color:Colors.white,
                  fontWeight:FontWeight.bold),
                      ),
                      SizedBox(height:10),
                      Image.asset('assets/on.png')
                    ],
                  ),
                ),
                  height: 180,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(),
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.circular(10),
                      ),
              )
            ),
            SizedBox(height:20),
             Card(
              child: Container(
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sadness ',style: TextStyle(fontSize:36,
                      color:Colors.white,
                      fontWeight:FontWeight.bold),
                          ),
                          SizedBox(height:10),
                          Text('Search for only COVID19 related\nnews only!!',style: TextStyle(fontSize:16,
                  color:Colors.white,
                  fontWeight:FontWeight.bold),
                      ),
                      SizedBox(height:10),
                      Image.asset('assets/off.png')
                    ],
                  ),
                ),
              width: 400,
                height: 180,
                decoration: BoxDecoration(
                  border: Border.all(),
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(10),
                    ),
                )
            ),
            SizedBox(height:20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(' Wanna log out?', style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold)),
                  GestureDetector(
                    onTap:(){
                      Navigator.of(context).pushNamed("/onboarding3");
                    } ,
                                      child: Text(' Click here', style: TextStyle(
                                        color: Colors.red[800],
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                  ),

                ] 
              ),
            )
                    
          ]
          )
      ),
      ]
    ),
    );
  }}

  


  