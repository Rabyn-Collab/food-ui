
//Restaurant - String imageUrl , String name, String address, int rating, List<Food> menu


import 'package:flutter/foundation.dart';
import 'package:food_ui/models/food.dart';

class Restaurant{
  final String imageUrl;
  final String name;
  final String address;
  final int rating;
  final List<Food> menu;

  Restaurant({
    this.imageUrl,
    this.name,
    this.rating,
    this.menu,
   this.address,
  });



}