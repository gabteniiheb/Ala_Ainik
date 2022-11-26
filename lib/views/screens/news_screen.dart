import 'package:flutter/material.dart';
class NewsScreen extends StatefulWidget {
  NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(child: 
      Column(
        children: [
          Center(
            child: Container(
               width: 200,
              height: 350,
              child: Card(
                child: Image.asset(
                  'assets/images/im17.jpg',
                  fit: BoxFit.cover,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
              ),
          ),
    SizedBox(
      height: 30,
    ),
    Center(
      child: Container(
       width: 200,
      height: 350,
      child: Card(
        child: Image.asset(
          'assets/images/im17.jpg',
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
      ),
      ),
    ),
    SizedBox(
      height: 30,
    ),
     Center(
      child: Container(
       width: 200,
      height: 350,
      child: Card(
        child: Image.asset(
          'assets/images/im17.jpg',
          fit: BoxFit.cover,
        ),
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
      ),
      
      ),
    ),
    SizedBox(
      height: 30,
    ),
     Center(
      child: Container(
       width: 200,
      height: 350,
      child: Card(
        child: Image.asset(
          'assets/images/im17.jpg',
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
      ),
      ),
    ),

        ],
      )
      ,) 
      
    );
  }
}