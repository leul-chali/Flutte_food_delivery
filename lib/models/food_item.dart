import 'package:flutter/material.dart';

class FoodCategory {
  final String id;
  final String name;
  final IconData icon;

  const FoodCategory({
    required this.id,
    required this.name,
    required this.icon,
  });
}

class FoodItem {
  final String id;
  final String name;
  final String category;
  final double price;
  final double rating;
  final String deliveryTime;
  final bool isFreeDelivery;
  final String imageUrl;
  final String description;
  final List<String> ingredients;
  final int reviewsCount;

  const FoodItem({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.rating,
    required this.deliveryTime,
    this.isFreeDelivery = true,
    required this.imageUrl,
    required this.description,
    required this.ingredients,
    this.reviewsCount = 168,
  });
}

class CartItem {
  final FoodItem foodItem;
  int quantity;
  String size;

  CartItem({
    required this.foodItem,
    this.quantity = 1,
    this.size = 'small',
  });

  double get totalPrice => foodItem.price * quantity;
}
