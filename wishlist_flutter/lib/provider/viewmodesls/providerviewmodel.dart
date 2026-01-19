import 'package:flutter/material.dart';
import 'package:wishlist_flutter/models/wishmodel.dart';

class WishlistProvider extends ChangeNotifier {
  final List<Wish> _wishes = [];
  List<Wish> get wishes => _wishes;
  //Agregar un producto a la lista de deseos
  void addWish(Wish wish){
    _wishes.add(wish);
    notifyListeners();
  }

  //Eliminar un producto de la lista de deseos

  void removeWish(int index){
    if (index < 0 || index >= _wishes.length) return; //seguridad
    _wishes.removeAt(index);
    notifyListeners();
  }
}