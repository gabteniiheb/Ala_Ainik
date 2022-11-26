import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.green,
          title: const Center(
              child: Text(
             'رئيسية',style: TextStyle(color: Colors.black,fontSize: 30),)),
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
        
        body: SingleChildScrollView(
          child:Row(
            children: [
               const SizedBox(
              height: 30,
            ),
              ImageSlideshow(

          /// Width of the [ImageSlideshow].
          width: 350,

          /// Height of the [ImageSlideshow].
          height: 100,

          /// The page to show when first creating the [ImageSlideshow].
          initialPage: 0,

          /// The color to paint the indicator.
          indicatorColor: Colors.blue,

          /// The color to paint behind th indicator.
          indicatorBackgroundColor: Colors.grey,

          /// The widgets to display in the [ImageSlideshow].
          /// Add the sample image file into the images folder
          children: [
            Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  ),
  child:const   Text(
    'كمل خبر\nجانب من المداخلة السيدة اسلام الزيدان حول دور المرأة\n في الاسرة العصرية و عيادة طب الاسنان',
    textAlign: TextAlign.center,
    textScaleFactor: 1.2,
  ),
),
            Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  ),
  child: const Text(
       'كمل خبر\nجانب من المداخلة السيدة اسلام الزيدان حول دور المرأة\n في الاسرة العصرية و عيادة طب الاسنان',

    textAlign: TextAlign.center,
    textScaleFactor: 1.2,
  ),
),
Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  ),
  child: const Text(
       'كمل خبر\nجانب من المداخلة السيدة اسلام الزيدان حول دور المرأة\n في الاسرة العصرية و عيادة طب الاسنان',

    textAlign: TextAlign.center,
    textScaleFactor: 1.2,
  ),
  
),
          ],

          /// Called whenever the page in the center of the viewport changes.
          onPageChanged: (value) {
            print('Page changed: $value');
          },

          /// Auto scroll interval.
          /// Do not auto scroll with null or 0.
          autoPlayInterval: 3000,

          /// Loops back to first slide.
          isLoop: true,
        ),
      const SizedBox(
              height: 30,
            ),
     
            ],
            
            ),
          
           
      
    




    ),
    
    );
    
  }

  
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