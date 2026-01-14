import 'package:flutter/material.dart';

class Wish{
  String title;
  String description;
  bool completed;

  Wish({
    required this.title,
    this.description = "",
    this.completed = false,
  });
}