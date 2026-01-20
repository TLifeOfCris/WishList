import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddWishScreen extends StatefulWidget {
  const AddWishScreen({super.key});

  @override
  State<AddWishScreen> createState() => _AddWishScreenState();
}

class _AddWishScreenState extends State<AddWishScreen> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

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