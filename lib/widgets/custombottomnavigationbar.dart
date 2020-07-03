import 'package:flutter/material.dart';
import 'package:flutternewsapp/pages/home.dart';
import 'package:flutternewsapp/pages/likes.dart';
import 'package:flutternewsapp/pages/profile.dart';
import 'package:flutternewsapp/pages/settings.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  State<StatefulWidget> createState() {
    return CustomBottomNavigationBarState();
  }  
}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedPage = 0;
  List<Widget> tabs = [HomePage(),LikePage(), ProfilePage(),Settings()];

  @override
  Widget build(BuildContext context) {

    return SafeArea 
    (child: 
     Scaffold(
      
          body:tabs[_selectedPage],
          bottomNavigationBar: BottomNavigationBar(
      
        //backgroundColor: Colors.green,
        currentIndex: _selectedPage,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;  
          });
        },
        items: [ 
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color:Colors.grey,
            ),
            
            title: Text('Home', style: TextStyle(color: Colors.grey,)),
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
           

            title: Text('Likes', style: TextStyle(color: Colors.grey,)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey,),
           
            title: Text(
              'Profile',
              style: TextStyle(color: Colors.grey,),
            ),
          ),
         BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.grey,),
           
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.grey,),
            ),
          ),
    
    
        ],
        ),
        ),
    
        );
  }
}