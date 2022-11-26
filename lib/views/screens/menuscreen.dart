
import 'package:flutter/material.dart';
import 'package:idarti_dari/views/screens/baladiti.dart';



class MenuScreen extends StatefulWidget {
  //final String title;

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.green,
          title: const Center(
              child: Text(
                'على عنيك',style: TextStyle(color: Colors.black),)),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(48.0),
            ),
          ),
        ),
       
        
        
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            
            buildImageInteractionCard(),
            buildImageInteractionCard2(),
           buildImageInteractionCard3(),
           buildImageInteractionCard4(),
          ],
        ),
      );

  Widget buildImageInteractionCard() => Card(
    elevation: 40,
      shadowColor: Colors.black,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
              
                 InkWell(
          onTap: () {
          Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>BaladitiScreen()),
                    );
          },
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('assets/images/im10.png',
                  width: 110.0, height: 110.0),
            ),
        ),
              
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: const Text(
                'بلديتي',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
         
          ],
        ),
      );
/////////////////////
 Widget buildImageInteractionCard2() => Card(
    elevation: 40,
      shadowColor: Colors.black,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
              
                 InkWell(
          onTap: () {
          Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>BaladitiScreen()),
                    );
          },
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('assets/images/im14.jpg',
                  width: 110.0, height: 110.0),
            ),
        ),
              
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: const Text(
                'صحتي',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
         
          ],
        ),
      );
  ////////////////////////////////////////////////////////card2
  Widget buildImageInteractionCard3() => Card(
    elevation: 40,
      shadowColor: Colors.black,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
              
                 InkWell(
          onTap: () {
          Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>BaladitiScreen()),
                    );
          },
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('assets/images/bus.png',
                  width: 110.0, height: 110.0),
            ),
        ),
              
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: const Text(
                'نقل',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
         
          ],
        ),
      );


       Widget buildImageInteractionCard4() => Card(
    elevation: 40,
      shadowColor: Colors.black,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
              
                 InkWell(
          onTap: () {
          Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>BaladitiScreen()),
                    );
          },
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('assets/images/im16.png',
                  width: 110.0, height: 110.0),
            ),
        ),
              
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: const Text(
                'بيئتي',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
         
          ],
        ),
      );
}
