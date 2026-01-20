import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wishlist_flutter/Screens/AddWishScreen.dart';
import 'package:wishlist_flutter/widgets/cuppertinoButton.dart';

class EmptyList extends StatelessWidget {
  const EmptyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Center( child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        
            Text('No wishes',style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade600,
              letterSpacing: 0.2
            ),),
            SizedBox(height: 16,),
            IOSButton(text: 'Add Wish', onPressed: (){
              Navigator.of(context).push(CupertinoPageRoute(builder: (_) => AddWishScreen()));
            })
          ],
        ),) ;
  }
}