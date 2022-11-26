import 'package:flutter/material.dart';

class ForumScreen extends StatefulWidget {
  ForumScreen({Key? key}) : super(key: key);

  @override
  State<ForumScreen> createState() => _ForumScreenState();
}

class _ForumScreenState extends State<ForumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.green,
          title: const Center(
              child: Text(
             'احكي بلديتي ومواطن',style: TextStyle(color: Colors.black,fontSize: 30),)),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(48.0),
            ),
          ),
      ),
      body:SingleChildScrollView(
          child:Column(
            children: [
               const SizedBox(
              height: 30,
            ),
             Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  ),
  child:const Center(child:  Text(
    'يعطكم الصحة على خدمة مواطن',
    textAlign: TextAlign.center,
    textScaleFactor: 1.2,
  ),
  ),
), 
 const SizedBox(
              height: 30,
            ),
       Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  ),
  child:Center(child:    Text(
    'يعطكم الصحة على خدمة مواطن',
    textAlign: TextAlign.center,
    textScaleFactor: 1.2,
  ),
  ),
),  
const SizedBox(
              height: 30,
            ),
           Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  ),
  child:const Center(child:  Text(
    'يعطكم الصحة على خدمة مواطن',
    textAlign: TextAlign.center,
    textScaleFactor: 1.2,
  ),
  ),
),  

SizedBox(
                width: 250,
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'احكي',
                    focusColor: Colors.green,
                  ),
                 // controller: fieldText,
                ),
              ),
              
              
              ElevatedButton(
                
                onPressed: (){},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: const Text('احكي'),
              ),
            ]
      ),
      )
    );
  }
}