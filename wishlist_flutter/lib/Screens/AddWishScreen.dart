import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddWishScreen extends StatelessWidget {
  const AddWishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(

      navigationBar: CupertinoNavigationBar(
        middle: const Text('Add Wish'),
        trailing: CupertinoButton(child: Text('Done'),
         onPressed: (){
          Navigator.of(context).pop();
         })
         ,
      ),
      child: SafeArea(child: Padding(padding: EdgeInsets.all(16),
      child: Column(
        children: [
          CupertinoTextField(
            placeholder: 'Wish Title',
          )
        ],
      ),),),

      
    );
  }
}