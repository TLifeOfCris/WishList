import 'package:flutter/material.dart';
import 'package:wishlist_flutter/models/wishmodel.dart';

class Homescreen extends StatelessWidget {
   Homescreen({super.key});

  List<Wish> wishes = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home : Scaffold(
      
        appBar: AppBar(
          title: Text('Wish List'),
        ),

        body: ListView.builder(itemBuilder: (context, index){
          return ListTile(
            title: Text(wishes[index].title,),
            trailing: IconButton(onPressed: (){

            }, icon: Icon(Icons.delete), ),
          );
        }),
      
      ),
    );
  }
}