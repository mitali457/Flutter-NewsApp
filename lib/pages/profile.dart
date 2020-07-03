import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{

@override
  _ProfilePageState createState() => _ProfilePageState();

}
class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            
            height: 400,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
            //color: Colors.red,
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
             boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 10)
                        ],
           image: DecorationImage(
        image: AssetImage("assets/profile.png"),
        fit: BoxFit.fill
        )
             )
          ),
          SizedBox(height:30),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ME THIS IS ME',
                style: TextStyle(fontSize:19,
                       color:  Colors.teal[700],
                       fontWeight:FontWeight.bold)),
                        SizedBox(height:10),
                       Row(
                         children: [
                           Text('Genbai Benno',
                style: TextStyle(fontSize:31,
                           color:  Colors.black,
                           fontWeight:FontWeight.bold)),
                           Icon(Icons.star,color: Colors.orange,size: 30,)
                         ],
                       ),
                        SizedBox(height:10),
                       Text('This is going to be a small\ndescription about you here,\ndont have to store it\nanywhere, just static\nplacement',
                style: TextStyle(fontSize:21,
                       color:  Colors.black,
                       fontWeight:FontWeight.w500)),


              ],
            ),
          )
        ],

      ),
    );

  }
}