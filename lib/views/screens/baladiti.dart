import 'package:flutter/material.dart';
import 'package:idarti_dari/views/screens/firstscreen.dart';
import 'package:idarti_dari/views/screens/news_screen.dart';
import 'package:idarti_dari/views/screens/services_screen.dart';
import 'package:idarti_dari/views/screens/suggestionsscreen.dart';
class BaladitiScreen extends StatefulWidget {
  
   BaladitiScreen({Key? key}) : super(key: key);

  @override
  State<BaladitiScreen> createState() => _BaladitiScreenState();
}

class _BaladitiScreenState extends State<BaladitiScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  final List<Widget> _widgetOptions = <Widget>[
   HomePage(),
   ServiceScreen(),
    MyCustomForm(),
    
     NewsScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.blue,size: 40),
            label: 'رئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: Colors.blue,size: 40,),
            label: 'مقتراحات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business,color: Colors.blue,size: 40),
            label: 'خدمات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper,color: Colors.blue,size: 40),
            label: 'اخبار',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 45, 238, 51),
        onTap: _onItemTapped,
      ),
    );
  }
}
