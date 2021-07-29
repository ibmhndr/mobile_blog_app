import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_blog_app/articles.dart';

class ArticlePage extends StatelessWidget {
  final Article article;

  var headArticle = TextStyle(
    fontSize: 22,
    color: Colors.deepPurple,
    fontWeight: FontWeight.bold
  );

  var titleText = TextStyle(
    fontSize: 22,
    color: Colors.deepPurple,
    fontWeight: FontWeight.bold
  );

  //Author Text Style
  var authorText = TextStyle(
      fontSize: 18,color: Colors.purple, fontWeight: FontWeight.bold
  );

  //Date And Time Read Style
  var dateTimeRead = TextStyle(
      fontSize: 16, color: Colors.grey
  );

  //ArticleBody
  var articleBody = TextStyle(
    fontSize: 19, color: Colors.deepPurple,
  );

  ArticlePage(@required this.article);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
           padding: const EdgeInsets.only(left: 8.0, right: 8.0),
           child: Column(
             children: <Widget>[
               Padding(
                 padding: const EdgeInsets.only(top: 8.0, bottom: 20.0),
                 child: Stack(
                   children: <Widget>[
                     //Back Icon
                     IconButton(
                       icon: Icon(Icons.arrow_back_ios),
                       color: Colors.deepPurple,
                       onPressed: () {
                         Navigator.pop(context);
                       },
                     ),
                     //Title Article
                     Padding(
                       padding: const EdgeInsets.only(top: 9.0),
                       child: Center(
                         child: Text(
                             'Article',
                             textAlign: TextAlign.center,
                             style: headArticle
                         ),
                       ),
                     )
                   ],
                 ),
               ),
               //Article Title
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.only(left: 10.0, bottom: 16.0),
                       child: Text(
                         article.title,
                         textAlign: TextAlign.left,
                         style: titleText,
                       ),
                     ),
                   )
                 ],
               ),
               //Article Information
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(left: 8.0),
                     child: ClipRRect(
                       child: Image.network(article.authorPhoto,height: 28,),
                       borderRadius: BorderRadius.circular(50),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0, right: 5.0),
                     child: TextButton(
                       onPressed: (){},
                       child: Text(
                         article.author,
                         style: authorText,
                       ),
                     ),
                   ),
                   Text(
                     ' ￮ ' + article.date + ' ￮ ' + article.readTime + 'm read',
                     style: dateTimeRead,
                   ),
                   //Bookmark Feature
                   Expanded(
                     child: BookmarkButton(),
                   )
                 ],
               ),
               ClipRRect(
                 child: Image.network(article.imageAsset),
                ),
               Container(
                 child: Column(
                   children: <Widget>[
                     ListView.builder(
                         padding: EdgeInsets.all(8.0),
                         physics: const NeverScrollableScrollPhysics(),
                         shrinkWrap: true,
                         itemBuilder: (context, index) {
                           return Text(
                             article.articleBody[index] + '\n',
                             textAlign: TextAlign.start,
                             style: articleBody,
                           );
                         },
                     itemCount: article.articleBody.length),
                   ],
                 ),
               )
             ],
           ),
         ),
       ),
      )
    );
  }
}

class BookmarkButton extends StatefulWidget {
  @override
  _BookmarkButtonState createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool isBookmark = false;

  @override
  Widget build(BuildContext context){
    return IconButton(
        onPressed: () {
          setState(() {
            isBookmark = !isBookmark;
          });
        },
        icon: Icon(
          isBookmark ? Icons.bookmark : Icons.bookmark_border, color: Colors.deepPurple,
        ));
  }
}