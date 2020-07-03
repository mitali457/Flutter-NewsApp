import 'package:flutter/material.dart';

class NewsDetails extends StatefulWidget {
  
  final String newsCategory;

  NewsDetails({this.newsCategory});
  @override
      _NewsDetails createState() => _NewsDetails();
    }

    class _NewsDetails extends State<NewsDetails> {
      var newslist;

      @override
      Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            //appBar: AppBar(),
            body: Column(
              children:[
                 Padding(
            padding: const EdgeInsets.only(left:40,top:70),
            child: GestureDetector(
              onTap: (){
                 Navigator.of(context).pushNamed("/home");
              },
              child:Image.asset("assets/icon2.png",fit: BoxFit.fill,height: 50,alignment: Alignment.center,)
              
            ),
          ),
           SizedBox(height:30),
          Text(""),
          SizedBox(height:30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Icon(Icons.favorite_border,size:30),
            Text('Like'),
            Divider(color: Colors.black,height: 10,),
            Icon(Icons.save_alt,size:30),
            Text('Share')

          ],),
           SizedBox(height:20),
          Text(''),
          Image.asset(''),
              ]
            ),
          );
      }
    }