import 'package:flutter/material.dart';
import 'package:mobile_blog_app/articles.dart';
import 'package:mobile_blog_app/article_page.dart';
import 'package:mobile_blog_app/bottom_navbar.dart';

class ExplorePage extends StatelessWidget {
  //Categories List
  final List<String> categories = ['Sport','Food','Technology','Science','Automotive','Economy','Hobby','Self'];

  //Search Style
  final searchStyle = TextStyle(
      color: Colors.grey,
      fontSize: 18
  );

  //Search Button Color (0xff + HEX)
  final searchBtn = Color(0xFFF9F9FB);

  //Categories Button
  final categoriesButton = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(const Color(0xfff9973e)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )
    ),
  );

  final categoriesText = TextStyle(
      fontSize: 14
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              //Column Page
              child: Column(
                children: <Widget>[
                  //Row Explore
                  Row(
                    children: <Widget>[
                      Text(
                          'Explore',
                          style: Theme.of(context).textTheme.headline1
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  //Row Tagline
                  Row(
                      children: <Widget>[
                        Text("Discover things you don't know about",
                            style: Theme.of(context).textTheme.subtitle1
                        ),
                      ]
                  ),
                  SizedBox(height: 20),
                  //Search Input
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        color: searchBtn,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.search,color: Colors.grey,),
                            SizedBox(width: 15),
                            Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search articles, authors, categories..',
                                    hintStyle: searchStyle,
                                    border: InputBorder.none,
                                  ),
                                )
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      )
                  ),
                  SizedBox(height: 10),
                  //List View Categories
                  Container(
                    height: 20,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        final items = categories[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ElevatedButton(
                            onPressed: (){},
                            style: categoriesButton,
                            child: Text(
                              items,
                              style: categoriesText,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  //Break Lines
                  Padding(
                    padding: const EdgeInsets.only(top: 14, bottom: 25),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Color(0xFFf2f2f2),
                    ),
                  ),
                  //List Articles
                  ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
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
                            decoration: BoxDecoration(
                              //border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFf2f2f4),
                                  blurRadius: 30.0,
                                  spreadRadius: 0.4,
                                  offset: Offset(0.1, 0.5),
                                )
                              ],
                            ),
                            child: Card(
                              margin: EdgeInsets.only(bottom: 12),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  //Article Illustration
                                  Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 12.0,bottom: 8.0),
                                        child: Image.network(article.imageAsset),
                                      )
                                  ),
                                  //Article Description
                                  Expanded(
                                    flex: 3,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 3.0, top: 8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          //Article Author
                                          Container(
                                            height: 22,
                                            child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(left: 8.0),
                                                child: ClipRRect(
                                                  child: Image.network(article.authorPhoto,height: 22,),
                                                  borderRadius: BorderRadius.circular(50),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 8.0),
                                                child: Text(
                                                  article.author,
                                                  style: Theme.of(context).textTheme.bodyText1,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ],
                                          ),
                                          ),
                                          //Article Title
                                          ConstrainedBox(
                                              constraints: BoxConstraints(
                                                minHeight: 10.0,
                                                maxHeight: 100.0,
                                              ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
                                              child: Text(
                                                article.title,
                                                style: Theme.of(context).textTheme.headline2,
                                                overflow: TextOverflow.fade,
                                              ),
                                            ),
                                          ),
                                          //Article Date & Read Time
                                          Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(left: 8.0,right: 2.0,bottom: 14.0),
                                                child: Text(
                                                  article.date + ' ￮ ' + article.readTime + 'm read',
                                                  style: Theme.of(context).textTheme.bodyText2,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                      ,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: articleList.length),
                ],
              ),
            )
        ),
      ),
      bottomNavigationBar: BottomNavBar(1)
    );
  }
}