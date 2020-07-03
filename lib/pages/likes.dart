import 'package:flutter/material.dart';
import 'package:flutternewsapp/helpers/news.dart';
import 'package:flutternewsapp/widgets/strings.dart';

class LikePage extends StatefulWidget {
  @override
  _LikePageState createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  var newslist;
  // bool _loading;
 // bool loader = true;
  void getNews() async {
    // News news = News();
    // await news.getNews();
    newslist = newsAll.news;
    // print(newslist.length);
    //  setState(() {
    //   _loading = false;
    // });
  }

    

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //categories = getCategories();
    getNews();
    print('object');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea( 
     
              child: SingleChildScrollView(
                              child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 80),
            child: Text(
                "WW",
                style: TextStyle(
                    fontSize: 36, color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
                child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Your Favs",
                      style: TextStyle(
                          fontSize: 36,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "These are some of the posts that\nyou’ve liked! Go on and add more.",
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 10),
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
                          ))
                        
                  ]),
          )),
        ]),
              ),
      ),
      
    );
  }
}
