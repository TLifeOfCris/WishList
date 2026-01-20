import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wishlist_flutter/models/wishmodel.dart';
import 'package:wishlist_flutter/provider/viewmodesls/providerviewmodel.dart';

class AddWishScreen extends StatefulWidget {
  const AddWishScreen({super.key});

  @override
  State<AddWishScreen> createState() => _AddWishScreenState();
}

class _AddWishScreenState extends State<AddWishScreen> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  //Limpiar los controllers
  @override
  void dispose(){
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _saveWish(){
    if (_titleController.text.trim().isEmpty) return;
    final product = Product(title: _titleController.text.trim(),
     description: _descriptionController.text.trim()
     );

     context.read<ProductsProvider>().addWish(product);
     Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(

      navigationBar: CupertinoNavigationBar(
        middle: const Text('Add Wish'),
        trailing: CupertinoButton(child: Text('Done'),
         onPressed: (){
          _saveWish();
         })
         ,
      ),
      child: SafeArea(child: Padding(padding: EdgeInsets.all(16),
      child: Column(
        children: [
          CupertinoTextField(
            controller: _titleController,
            placeholder: 'Wish Title',
          ),
          const SizedBox(height: 12,),
          CupertinoTextField(
            controller: _descriptionController,
            placeholder: 'Description',
            maxLines: 3
          )
        ],
      ),),),

      
    );
  }
}