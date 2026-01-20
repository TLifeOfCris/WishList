import 'package:flutter/material.dart';
import 'package:wishlist_flutter/models/wishmodel.dart';

class ProductsProvider extends ChangeNotifier {
  final List<Product> _wishes = [
    Product(title: 'Pollito')
  ];
  List<Product> get wishes => _wishes;



  //Agregar un producto a la lista de deseos
  void addWish(Product wish){
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