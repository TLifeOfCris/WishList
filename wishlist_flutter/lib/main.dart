import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:wishlist_flutter/Screens/HomeScreen.dart';
import 'package:wishlist_flutter/provider/viewmodesls/providerviewmodel.dart';

void main() {
  
  runApp(
    
    
    ChangeNotifierProvider(create: (_) => WishlistProvider(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Se esta haciendo la prueba con CupertinoApp
    return CupertinoApp( home: HomeScreen(),);
  }
}
