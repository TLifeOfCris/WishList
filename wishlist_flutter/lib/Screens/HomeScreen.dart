import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home : Scaffold(
      
        appBar: AppBar(
          title: Text('Wish List'),
        ),

        body: Text('Holi'),
      
      ),
    );
  }
}