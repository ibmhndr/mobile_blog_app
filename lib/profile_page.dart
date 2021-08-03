import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_blog_app/bottom_navbar.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //Top Page
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      //Background Image
                      Image.asset('images/book_profile.jpg'),
                      SafeArea(
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Color(0xFFf2f2f4).withOpacity(0.8),
                                  blurRadius: 100.0,
                                  spreadRadius: 30.0,
                                )
                              ]
                          ),
                          margin: EdgeInsets.only(top:40, right: 20, left: 20),
                          padding: EdgeInsets.only(bottom: 20),
                          //Photo & User Profile
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              //Photo
                              Center(
                                  child: Icon(Icons.account_circle_sharp, size: 120, color: Colors.purple)
                              ),
                              //User Profile
                              Center(
                                child: Text(
                                  'Hello, Guest',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Body View
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: <Widget>[
                  //About Us Inkwell
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: InkWell(
                            onTap: (){},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abous Us',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                                Divider(
                                  color: Colors.black.withOpacity(0.4),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Send Feedback Inkwell
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: InkWell(
                            onTap: (){},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Send Feedback',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                Divider(
                                  color: Colors.black.withOpacity(0.4),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  //Log In Text
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Log Into your account. \n to enjoy more convenient features',
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
                  //Facebook Login
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF3b5998))
                      ),
                      onPressed: (){},
                      child: Container(
                        width: 210,
                        child: Row(
                          children: [
                            Expanded(child:
                            Icon(Icons.facebook),
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Text(
                                  'Sign in with Facebook',
                                  style: TextStyle(
                                      fontSize: 18
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                  ),
                  //Google Login
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
                      ),
                      onPressed: (){},
                      child: Container(
                        width: 210,
                        child: Row(
                          children: [
                            Expanded(child:
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.network('https://img.icons8.com/color/452/google-logo.png'),
                            ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Text(
                                  'Sign in with Google',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                  )
                ],
              ),
            ),
            //Bottom Page
          ],
        )
      ),
      bottomNavigationBar: BottomNavBar(3),
    );
  }
}