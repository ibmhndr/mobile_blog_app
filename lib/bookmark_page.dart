import 'package:flutter/material.dart';
import 'package:mobile_blog_app/bottom_navbar.dart';

class BookmarkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Bookmark',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      CircleAvatar(
                          child: IconButton(
                              icon: Icon(Icons.filter_list),
                              onPressed: () {}),
                          backgroundColor: Color(0xFFF9F9FB)
                      ),
                    ],
                  ),
                ),
                Row(
                    children: <Widget>[
                      Text("Read saved articles later",
                          style: Theme.of(context).textTheme.subtitle1
                      ),
                    ]
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 25),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: Color(0xFFf2f2f2),
                  ),
                ),
                //Body Container
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Opacity(
                            opacity: 0.3,
                            child: Image.asset('images/error_msg1g.png', height: 300,)),
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
                            "There is nothing here.\n Please log in to save your bookmark.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.withOpacity(0.7),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(2),
    );
  }
}