import 'package:flutter/material.dart';
import 'package:flutternewsapp/models/article.dart';
import 'package:flutternewsapp/pages/newsdetails.dart';
import 'package:intl/intl.dart';

class NewsTile extends StatelessWidget {
  final Article newsItem;

  NewsTile(
      {this.newsItem,
     });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       
      },
      child: GestureDetector(
        onTap: () {
          _buildSearchOverlay(context,newsItem);
          //  Navigator.of(context).pushNamed("/news");
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            padding: EdgeInsets.all(12),
           // alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
             // color: Colors.yellow,
                border: Border.all(),
                // boxShadow: [
                //   BoxShadow( blurRadius: 10)
                // ],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
                    
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(DateFormat.Hm().format(DateTime.parse(
                     newsItem.publshedAt.toIso8601String())),
                      //maxLines: 2,
                      style: TextStyle(
                        
                          color: Colors.red[900],
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    // Text(newsItem.author,style: TextStyle(
                        
                    //       color: Colors.red[900],
                    //       fontSize: 1,
                    //       fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                 newsItem.title,
                  maxLines: 2,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.network(
                      newsItem.urlToImage,
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    )),
                
                
                
                // Text(
                //   newsItem.author,
                //   maxLines: 2,
                //   style: TextStyle(color: Colors.black54, fontSize: 14),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _buildSearchOverlay(context, Article newsItem) async {
    await showGeneralDialog(
        barrierDismissible: true,
        context: context,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        useRootNavigator: true,
        barrierColor: Colors.black.withOpacity(0.01),
        transitionDuration: const Duration(milliseconds: 350),
        transitionBuilder: _buildMaterialDialogTransitions,
        pageBuilder: (buildContext, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return NewsDetails(newsItem:newsItem);
        });
  }

  Widget _buildMaterialDialogTransitions(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 1),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
  }
}
