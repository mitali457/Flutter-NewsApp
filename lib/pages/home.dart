import 'package:flutter/material.dart';
import 'package:flutternewsapp/helpers/news.dart';
import 'package:flutternewsapp/widgets/custombottomnavigationbar.dart';
import 'package:flutternewsapp/widgets/strings.dart';


class HomePage extends StatefulWidget{

@override
  _HomePageState createState() => _HomePageState();

}
class _HomePageState extends State<HomePage> {
   bool _loading;
  var newslist;
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title:Text("WW",style: TextStyle(fontSize:36,
                  color:Colors.black,
                  fontWeight:FontWeight.bold),)),
      
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
          child: Column(
          children: <Widget>[
            Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
                         
            ),
            child: ListView.builder(
                itemCount: newslist.length,
                // shrinkWrap: true,
                // physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return NewsTile(
                    imgUrl: newslist[index].urlToImage ?? "",
                    title: newslist[index].title ?? "",
                   // desc: newslist[index].description ?? "",
                    content: newslist[index].content ?? "",
                    posturl: newslist[index].articleUrl ?? "",
                  );
                }),
                  ),
                )
              )
                    
          ]
          )
      ),
      
    ),
    
    //bottomNavigationBar:CustomBottomNavigationBar(),
    );
  }
}