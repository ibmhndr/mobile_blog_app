import 'package:flutter/material.dart';
import 'package:mobile_blog_app/article_page.dart';
import 'package:mobile_blog_app/bottom_navbar.dart';
import 'package:mobile_blog_app/articles.dart';
import 'package:mobile_blog_app/bookmark_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Home',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    CircleAvatar(
                        child: IconButton(
                            icon: Icon(Icons.notifications_none_outlined),
                            onPressed: () {}),
                        backgroundColor: Color(0xFFF9F9FB)
                    ),
                  ],
                ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 25),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Color(0xFFf2f2f2),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Popular',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ],
                ),
              ),
                //Popular Item List
              Container(
                height: 350,
                width: 400,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    //physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                      final Article article = articleList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return ArticlePage(article);
                          }));
                        },
                        //Article Card
                        child: Container(
                          padding: EdgeInsets.only(right: 10),
                          //Shadow Decoration
                          decoration: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Color(0xFFf2f2f4).withOpacity(0.2),
                                blurRadius: 30.0,
                                spreadRadius: 0.4,
                                offset: Offset(0.1, 0.5),
                              )
                            ],
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: Colors.grey.withOpacity(0.2)
                              )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                //Article Illustration
                                Expanded(
                                    child: Container(width: 250,child: Image.network(article.imageAsset, fit: BoxFit.fill,))
                                ),
                                //Article Title
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      //Article Title
                                      Container(
                                        padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 8.0,top: 8.0),
                                        width: 250,
                                        height: 70,
                                        child: Text(
                                          article.title,
                                          style: Theme.of(context).textTheme.headline3,
                                          overflow: TextOverflow.fade,
                                        ),
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 25, bottom: 18, right: 25, top: 8.0),
                                          child: Container(
                                            width: 200,
                                            height: 1,
                                            color: Color(0xFFf2f2f2),
                                          ),
                                        ),
                                      ),
                                      //Article Author
                                      Expanded(
                                          child: Container(
                                            width: 250,
                                            height: 10,
                                            child: Row(
                                              children: <Widget>[
                                                Flexible(child:
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 12.0),
                                                  child: ClipRRect(
                                                    child: Image.network(article.authorPhoto,height: 50,),
                                                    borderRadius: BorderRadius.circular(50),
                                                  ),
                                                ),
                                                ),
                                                Expanded(
                                                  flex: 2,
                                                    child:
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 8.0, left: 12.0),
                                                          child: Text(
                                                            article.author,
                                                            style: Theme.of(context).textTheme.bodyText1,
                                                            overflow: TextOverflow.ellipsis,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 12.0),
                                                          child: Text(
                                                            article.date + ' ￮ ' + article.readTime + 'm read',
                                                            style: Theme.of(context).textTheme.bodyText2,
                                                            overflow: TextOverflow.ellipsis,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                ),
                                                Expanded(
                                                  child: Container
                                                  (child: BookmarkButton()),
                                                )
                                              ],
                                            ),
                                          ),
                                      ),
                                      //Article Date & Read Time
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: articleList.length),
              ),
              //Following Header
              Padding(
                padding: const EdgeInsets.only(top: 25.0, bottom: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Following',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      child: Opacity(
                        opacity: 0.3,
                        child: Image.asset('images/error_msg2g.png')),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Oops',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.grey
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:40.0),
                      child: Text(
                        "It seems like you're using a Guest account. Please log in to use this feature.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.withOpacity(0.7),
                        ),
                      ),
                    ),
                  ],
                ),
              )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(0),
    );
  }
}