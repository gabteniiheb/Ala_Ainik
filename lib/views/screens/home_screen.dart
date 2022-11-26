import 'package:flutter/material.dart';
import 'package:idarti_dari/views/screens/auth/login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: LoginScreen()
    );
  }
}