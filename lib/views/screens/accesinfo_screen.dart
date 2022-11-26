import 'package:flutter/material.dart';
import 'package:idarti_dari/views/widgets/form_personnel.dart';
import 'package:idarti_dari/views/widgets/from_organisation.dart';

class AccesInfoScreen extends StatefulWidget {
  AccesInfoScreen({Key? key}) : super(key: key);

  @override
  State<AccesInfoScreen> createState() => _AccesInfoScreenState();
}

class _AccesInfoScreenState extends State<AccesInfoScreen> {
  @override
   Widget build(BuildContext context) => DefaultTabController( 
    length: 2,
    child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.person,color:Color.fromARGB(255, 56, 200, 236) ,)),
                Tab(icon: Icon(Icons.factory,color:Color.fromARGB(255, 56, 200, 236),)),
               
              
              ],
            ),
            toolbarHeight: 80,
            backgroundColor: Colors.green,
            title: const Center(child: Text('مطلب نافذ الى المعلومة',style: TextStyle(color: Colors.black))),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(48.0),
              ),
            ),
          ),
          drawer: Drawer(backgroundColor: Colors.white.withOpacity(0.2),
        
          ),
          body: TabBarView(
            // padding: EdgeInsets.all(16),
            children: [
              ListView(
                padding: EdgeInsets.all(16),
                children: [
               MyCustomForm(),
              
                  
                ],
              ),
              ListView(
                padding: EdgeInsets.all(16),
                children: [
              
                 
               OrganisationForm(),
                
                ],
              ),
              
             
            ],
          ),
    ),
      );
  }



  


