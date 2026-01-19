import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wishlist_flutter/models/wishmodel.dart';
import 'package:wishlist_flutter/provider/viewmodesls/providerviewmodel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wishlistProvider  = context.watch<WishlistProvider>();
    final wishes = wishlistProvider.wishes;
    return Scaffold(

      appBar: AppBar(title: Text('WishList')),
      body: wishes.isEmpty ? const Center( child: Text('No wishes'),) : ListView.builder(
        itemCount: wishes.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(wishes[index].title),
            trailing: IconButton(onPressed: (){
              wishlistProvider.removeWish(index);
            }, icon: Icon(Icons.delete)),
          );
        },
      )

    );
  }
}