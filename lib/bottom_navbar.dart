import 'package:flutter/material.dart';
import 'package:mobile_blog_app/explore_page.dart';
import 'package:mobile_blog_app/bookmark_page.dart';
import 'package:mobile_blog_app/home_page.dart';
import 'package:mobile_blog_app/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  final int pageIndex;

  const BottomNavBar(this.pageIndex);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List _currentPage = <StatelessWidget>[
    HomePage(), ExplorePage(), BookmarkPage(), ProfilePage()
  ];

  void _changeSelectedNavBar(int index) {
    setState(() {
      if(widget.pageIndex != index)
        {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
            return _currentPage[index];
          }));
        }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
            BoxShadow(
            color: Color(0xFFdbd0d0),
            blurRadius: 30.0,
            spreadRadius: 0.4,
            offset: Offset(2.1, 0.5)
            ),
          ]
        ),
      child: BottomNavigationBar(
        //backgroundColor: const Color(0xfff9973e),
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
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
        currentIndex: widget.pageIndex,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}