import 'package:flutter/material.dart';
import 'package:flutternewsapp/pages/newsdetails.dart';

class NewsTile extends StatelessWidget {
  final String title, content, posturl, imgUrl, desc;

  NewsTile(
      {this.imgUrl,
      this.desc,
      this.title,
      this.content,
      @required this.posturl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(context, MaterialPageRoute(
        //     builder: (context) => ArticleView(
        //       postUrl: posturl,
        //     )
        // ));
      },
      child: GestureDetector(
        onTap: () {
          _buildSearchOverlay(context);
          //  Navigator.of(context).pushNamed("/news");
        },
        child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  border: Border.all(),
                  boxShadow: [
                    BoxShadow(color: Colors.cyan[200], blurRadius: 10)
                  ],
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(6),
                      bottomLeft: Radius.circular(6))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.network(
                        imgUrl,
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    title,
                    maxLines: 2,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  // Text(
                  //   desc,
                  //   maxLines: 2,
                  //   style: TextStyle(color: Colors.black54, fontSize: 14),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _buildSearchOverlay(context) async {
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
          return NewsDetails();
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
