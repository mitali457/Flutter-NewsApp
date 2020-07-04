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
          bottomNavigationBar:
        BottomNavigationBar(
      selectedItemColor: Colors.indigo,
      unselectedItemColor:Colors.grey,
     // fixedColor: Colors.yellowAccent,
        //backgroundColor: Colors.green,
        currentIndex: _selectedPage,
        //fixedColor: Colors.indigo,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;  
          });
        },
        items: [ 
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            
            title: Text('Home', ),
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              
            ),
           

            title: Text('Likes', ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, ),
           
            title: Text(
              'Profile',
              
            )
          ),
         BottomNavigationBarItem(
            icon: Icon(Icons.settings, 
            // 
            ),
           
            title: Text(
              'Settings',
              // ,
            ),
          ),
    
    
        ],
        ),
        ),
    
     );
  }
}