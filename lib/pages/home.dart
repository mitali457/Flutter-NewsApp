import 'package:flutter/material.dart';
import 'package:flutternewsapp/helpers/news.dart';
import 'package:flutternewsapp/models/article.dart';

import 'package:flutternewsapp/widgets/newstile.dart';


class HomePage extends StatefulWidget{

@override
  _HomePageState createState() => _HomePageState();

}
class _HomePageState extends State<HomePage> {
   bool _loading;
   List<Article>   newslist;
  void getNews() async {
    News news = newsAll;
    await news.getNews();
    newslist = news.news;
    setState(() {
      _loading = false;
    });
  }
   @override
  void initState() {
    _loading = true;
    // TODO: implement initState
    super.initState();

    //categories = getCategories();
    getNews();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(100.0), // here the desired height
          child: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title:Padding(
          padding: const EdgeInsets.only(top:20),
          child: Text("WW",style: TextStyle(fontSize:36,
                    color:Colors.black,
                    fontWeight:FontWeight.bold),),
        ))),
      
    body: SafeArea(
        child: _loading
            ? Center(
                child: CircularProgressIndicator(),
              )
    :
    // Column(
     
    //   children: <Widget>[
    //    Padding(
    //      padding: const EdgeInsets.only(left:40,top:80),
    //      child: Text("WW",style: TextStyle(fontSize:36,
    //               color:Colors.black,
    //               fontWeight:FontWeight.bold),),
    //    ),
    //      SizedBox(height:20), 
       SingleChildScrollView(
          child: Card(
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
         // color: Colors.red,
          borderRadius: BorderRadius.only(
              // topRight: Radius.circular(20),
              //     topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20))),
                     
          
          child: ListView.builder(
              itemCount: newslist.length,
              // shrinkWrap: true,
              // physics: ClampingScrollPhysics(),
              itemBuilder: (context, index) {
              return NewsTile(
                newsItem:newslist[index],
                
              );
              }),
              )
            )
      ),
      
    ),
    
    //bottomNavigationBar:CustomBottomNavigationBar(),
    );
  }
}