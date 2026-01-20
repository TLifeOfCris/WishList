import 'package:flutter/material.dart';

class Product{
 final  String title;
  final String description;
  bool isLiked;

  Product({
    required this.title,
    this.description = "",
    this.isLiked = false,
  });
}