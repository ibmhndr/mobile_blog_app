import 'package:flutter/material.dart';
import 'package:mobile_blog_app/articles.dart';
import 'package:mobile_blog_app/article_page.dart';

class MainPage extends StatelessWidget {
  //Heading Style
  var headStyle = TextStyle(
    fontSize: 25, fontWeight: FontWeight.bold, color: Colors.purple
  );

  //Description Style
  var descStyle = TextStyle(
    fontSize: 16, color: Colors.grey
  );

  //Author Text Style
  var authorText = TextStyle(
    fontSize: 16,color: Colors.purple, fontWeight: FontWeight.bold
  );

  //Search Style
  var searchStyle = TextStyle(
      color: Colors.grey,
      fontSize: 18
  );

  //Article Title Style
  var titleText = TextStyle(
    fontSize: 18, color: Colors.deepPurple, fontWeight: FontWeight.bold
  );

  //Date And Time Read Style
  var dateTimeRead = TextStyle(
    fontSize: 13, color: Colors.grey
  );

  //Search Button Color (0xff + HEX)
  var opacityGrey = Color(0xFFF9F9FB);

  //Categories Button
  var categoriesButton = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(const Color(0xfff9973e)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )
    ),
  );

  var categoriesText = TextStyle(
      fontSize: 14
  );

  //Categories List
  List<String> categories = ['Sport','Food','Technology','Science','Automotive','Economy','Hobby','Self'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              //Column Page
              child: Column(
                children: <Widget>[
                  //Row Explore
                  Row(
                    children: <Widget>[
                      Text(
                          'Explore',
                          style: headStyle
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  //Row Tagline
                  Row(
                      children: <Widget>[
                        Text("Discover things you don't know about",
                            style: descStyle
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
                        color: opacityGrey,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 14, bottom: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Color(0xFFf2f2f2),
                    ),
                  ),
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
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  //Article Illustration
                                  Expanded(
                                      flex: 1,
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
                                          Row(
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
                                                  style: authorText,
                                                ),
                                              ),
                                            ],
                                          ),
                                          //Article Title
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
                                            child: Text(
                                              article.title,
                                              style: titleText,
                                            ),
                                          ),
                                          //Article Date & Read Time
                                          Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(left: 8.0,right: 2.0,bottom: 14.0),
                                                child: Text(
                                                  article.date + ' ￮ ' + article.readTime + 'm read',
                                                  style: dateTimeRead,
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
      bottomNavigationBar: BottomNavBar()
    );
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedNavBar = 0;

  void _ChangeSelectedNavBar(int index) {
    setState(() {
      _selectedNavBar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.deepPurple,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          label: 'Bookmark',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Profile',
        )
      ],
      showUnselectedLabels: true,
      currentIndex: _selectedNavBar,
      onTap: _ChangeSelectedNavBar,
    );
  }
}