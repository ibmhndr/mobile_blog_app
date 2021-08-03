import 'package:flutter/material.dart';
import 'package:mobile_blog_app/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        fontFamily:'SourceSans',
        textTheme: TextTheme(
          //Headline Page
          headline1: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.purple),
          //Page Tagline
          subtitle1: TextStyle(fontSize: 16, color: Colors.grey),

          //Article Card Title Text
          headline2: TextStyle(fontSize: 18, color: Colors.deepPurple, fontWeight: FontWeight.bold),
          //Author Card Text
          bodyText1: TextStyle(fontSize: 16,color: Colors.purple, fontWeight: FontWeight.bold),
          //DateTimeRead Card Text
          bodyText2: TextStyle(fontSize: 13, color: Colors.grey),

          //Home Card Title
          headline3: TextStyle(fontSize: 20, color: Colors.deepPurple, fontWeight: FontWeight.bold, wordSpacing: 2),
        ),
      ),
      home: HomePage(),
    );
  }
}
