// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
class MyCustomForm extends StatefulWidget {  
  @override  
  MyCustomFormState createState() {  
    return MyCustomFormState();  
  }  
}  
// Create a corresponding State class, which holds data related to the form.  
class MyCustomFormState extends State<MyCustomForm> {  
  // Create a global key that uniquely identifies the Form widget  
  // and allows validation of the form.  
  final _formKey = GlobalKey<FormState>();  
  
  @override  
  Widget build(BuildContext context) {  
    // Build a Form widget using the _formKey created above.  
    return Form(  
      key: _formKey,  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: <Widget>[  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'اسمك',  
              labelText: 'اسمك',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'ما يلزمش يكون فارغ';  
              }  
              return null;  
            },  
          ),  
           TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText:'لقبك',  
              labelText: 'لقبك',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'ما يلزمش يكون فارغ';  
              }  
              return null;  
            },  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.phone),  
              hintText: 'نمرو تلفون',  
              labelText: 'نمرو تلفون',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'ما يلزمش يكون فارغ';  
              }  
              return null;  
            },  
          ), 
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.phone),  
              hintText: 'موضوع',  
              labelText: 'موضوع المطلب',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'ما يلزمش يكون فارغ';  
              }  
              return null;  
            },  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
            icon: const Icon(Icons.calendar_today),  
            hintText: 'المعلومة',  
            labelText: 'شنية المعلومة لتحب تعريفها',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'ما يلزمش يكون فارغ';  
              }  
              return null;  
            },  
           ),  
          new Container( 
            
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              
                  
              child:  new ElevatedButton(  
                child: const Text('ابعث'),  
                onPressed: () {  
                  // It returns true if the form is valid, otherwise returns false  
                  if (_formKey.currentState!.validate()) {  
                    // If the form is valid, display a Snackbar.  
                    Scaffold.of(context)  
                        .showSnackBar(SnackBar(content: Text('جاري بعث')));  
                  }  
                },  
              )),  
        ],  
      ),  
    );  
  }
} 