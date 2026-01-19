import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wishlist_flutter/models/wishmodel.dart';
import 'package:wishlist_flutter/provider/viewmodesls/providerviewmodel.dart';
import 'package:wishlist_flutter/widgets/cuppertinoButton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wishlistProvider  = context.watch<WishlistProvider>();
    final wishes = wishlistProvider.wishes;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('WishList'),
      ),
      child: SafeArea(
        child: wishes.isEmpty ?  Center( child: Column(
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
            IOSButton(text: 'Add Wish', onPressed: (){})
          ],
        ),) : ListView.builder(
          itemCount: wishes.length,
          itemBuilder: (context, index){
            return CupertinoListTile(
              title: Text(wishes[index].title),
              trailing: CupertinoButton(
                onPressed: (){
                  //se elimina el deseo de la Lista y si no hay nada en la LIST vuelve a "Agrega un deseo"
                wishlistProvider.removeWish(index);
              }, 
              child: Icon(CupertinoIcons.delete), color: CupertinoColors.systemRed),
            );
          },
        ),
      ),

     //Aqui irá lo de agregar Wish a la Lista

    );
  }
}