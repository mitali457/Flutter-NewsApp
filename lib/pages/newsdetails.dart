import 'package:flutter/material.dart';
import 'package:flutternewsapp/models/article.dart';

class NewsDetails extends StatefulWidget {
  
  final Article newsItem;
  

  NewsDetails({this.newsItem});
  @override
      _NewsDetails createState() => _NewsDetails();
    }

    class _NewsDetails extends State<NewsDetails> {
      var newslist;

      @override
      Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.black.withOpacity(0.7),
            //appBar: AppBar(),
            body: Column(
              children:[
                 Padding(
            padding: const EdgeInsets.only(left:40,top:70),
            child: GestureDetector(
              onTap: (){
                 Navigator.of(context).pop();
              },
              child:Image.asset("assets/icon2.png",fit: BoxFit.fill,height: 70,alignment: Alignment.center,)
              
            ),
          ),

           //SizedBox(height:10),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
                  border: Border.all(),
                  boxShadow: [
                    BoxShadow( blurRadius: 10)
                  ],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
           height: 730,
            //color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                children: [
                  Text(widget.newsItem.title,style: TextStyle(fontSize:30,
                          color:Colors.black,
                          fontWeight:FontWeight.w800),),
                          SizedBox(height:30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Icon(Icons.favorite_border,size:30),
                Text('Like',style: TextStyle(fontSize:20,
                      color:Colors.black,
                      fontWeight:FontWeight.bold),),
                       Container(color: Colors.black, height: 30, width: 2,),
                      
                //Divider(color: Colors.black,),
                Icon(Icons.save_alt,size:30),
                Text('Share',style: TextStyle(fontSize:20,
                      color:Colors.black,
                      fontWeight:FontWeight.bold),)

              ],),
               SizedBox(height:20),
              Text(widget.newsItem.description,
             style: TextStyle(fontSize:18,
                      color:Colors.black,
                      fontWeight:FontWeight.w500), ),
                      SizedBox(height:20),
                       ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.network(
                       widget. newsItem.urlToImage,
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      )),
              
                  ]
                
              ),
            ),
          ),
          
              ])); 
          
      }
    }