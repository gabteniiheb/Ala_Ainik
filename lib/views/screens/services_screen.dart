import 'package:flutter/material.dart';
import 'package:idarti_dari/views/screens/accesinfo_screen.dart';
import 'package:idarti_dari/views/screens/forum_discussion.dart';

class ServiceScreen extends StatefulWidget {
  ServiceScreen({Key? key}) : super(key: key);

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.green,
          title: const Center(
              child: Text(
              'خدمات',style: TextStyle(color: Colors.black,fontSize: 30),)),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(48.0),
            ),
          ),
          actions: [
          // Navigate to the Search Screen
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const SearchPage())),
              icon: const Icon(Icons.search))
        ],
        ),
        drawer: const Drawer(),
        body:ListView(
          padding: EdgeInsets.all(16),
          children: [
            buildImageInteractionCard(),
            buildImageInteractionCard2(),
            buildImageInteractionCard3(),
            buildImageInteractionCard4(),
          ],
        ),
      );

      
  
  }
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
                      MaterialPageRoute(builder: (context) =>AccesInfoScreen()),
                    );
          },
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('assets/images/imc1.png',
                  width: 110.0, height: 110.0),
            ),
        ),
              
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: const Text(
               'نافذ الى المعلومة',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
         
          ],
        ),
      );
      ///////////////////////
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
                      MaterialPageRoute(builder: (context) =>ForumScreen()),
                    );
          },
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('assets/images/imc2.png',
                  width: 110.0, height: 110.0),
            ),
        ),
              
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: const Text(
               ' تحدث مع بلدتك',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
         
          ],
        ),
      );
      /////////////////////////////////
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
                      MaterialPageRoute(builder: (context) =>ForumScreen()),
                    );
          },
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('assets/images/imc4.png',
                  width: 110.0, height: 110.0),
            ),
        ),
              
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: const Text(
               'اقتراحات',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
         
          ],
        ),
      );
      ///////////////////
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
                      MaterialPageRoute(builder: (context) =>ForumScreen()),
                    );
          },
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('assets/images/imc3.png',
                  width: 110.0, height: 110.0),
            ),
        ),
              
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: const Text(
              'وين الكميون سي علاء',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
         
          ],
        ),
      );
      
}
// Search Page
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // The search area here
          title: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    /* Clear the search field */
                  },
                ),
                hintText: 'لوج على خدمة',
                border: InputBorder.none),
          ),
        ),
      )),
    );
  }
}