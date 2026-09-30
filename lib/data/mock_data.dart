import 'package:flutter/material.dart';
import '../models/food_item.dart';

class MockData {
  static const List<FoodCategory> categories = [
    FoodCategory(
      id: 'burgers',
      name: 'Burgers',
      icon: Icons.lunch_dining_rounded,
    ),
    FoodCategory(
      id: 'pizza',
      name: 'Pizza',
      icon: Icons.local_pizza_rounded,
    ),
    FoodCategory(
      id: 'cookies',
      name: 'Cookies',
      icon: Icons.cookie_rounded,
    ),
    FoodCategory(
      id: 'drinks',
      name: 'Drinks',
      icon: Icons.local_drink_rounded,
    ),
    FoodCategory(
      id: 'salads',
      name: 'Salads',
      icon: Icons.ramen_dining_rounded,
    ),
  ];

  static const List<FoodItem> foodItems = [
    FoodItem(
      id: '1',
      name: 'Chicken Burger',
      category: 'Burger',
      price: 16.8,
      rating: 4.5,
      deliveryTime: '10-20',
      isFreeDelivery: true,
      imageUrl:
          'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=800&auto=format&fit=crop&q=80',
      description:
          'Chicken Burger with Cheese and Lettuce and Tomato and Onion and Pickles and Mayonnaise and Ketchup and Mustard and BBQ Sauce. Served on a toasted sesame brioche bun.',
      ingredients: ['Cheese', 'Chicken', 'Lettuce', 'Tomato', 'BBQ Sauce'],
      reviewsCount: 168,
    ),
    FoodItem(
      id: '2',
      name: 'Italian Pizza',
      category: 'Pizza',
      price: 18.6,
      rating: 5.0,
      deliveryTime: '20-30',
      isFreeDelivery: true,
      imageUrl:
          'https://images.unsplash.com/photo-1604382355076-af4b0eb60143?w=800&auto=format&fit=crop&q=80',
      description:
          'Authentic Italian wood-fired pizza with fresh buffalo mozzarella, fragrant basil leaves, rich San Marzano tomato sauce, and a drizzle of extra virgin olive oil.',
      ingredients: ['Mozzarella', 'San Marzano Tomato', 'Basil', 'Olive Oil'],
      reviewsCount: 245,
    ),
    FoodItem(
      id: '3',
      name: 'Humberger Deluxe',
      category: 'Burger',
      price: 14.5,
      rating: 4.2,
      deliveryTime: '20-30',
      isFreeDelivery: true,
      imageUrl:
          'https://images.unsplash.com/photo-1586190848861-99aa4a171e90?w=800&auto=format&fit=crop&q=80',
      description:
          'Double smashed beef patty with melted aged cheddar, crisp smoked bacon, red onions, and house secret sauce on a toasted potato roll.',
      ingredients: ['Beef Patty', 'Cheddar', 'Bacon', 'Pickles'],
      reviewsCount: 94,
    ),
    FoodItem(
      id: '4',
      name: 'Chicken Salad',
      category: 'Salads',
      price: 12.0,
      rating: 4.8,
      deliveryTime: '15-20',
      isFreeDelivery: true,
      imageUrl:
          'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=800&auto=format&fit=crop&q=80',
      description:
          'Healthy garden salad with marinated sliced chicken breast, avocado, baby spinach, cherry tomatoes, cucumbers, and lemon balsamic vinaigrette.',
      ingredients: ['Grilled Chicken', 'Avocado', 'Spinach', 'Vinaigrette'],
      reviewsCount: 112,
    ),
    FoodItem(
      id: '5',
      name: 'Chocolate Chip Cookies',
      category: 'Cookies',
      price: 8.5,
      rating: 4.7,
      deliveryTime: '10-15',
      isFreeDelivery: false,
      imageUrl:
          'https://images.unsplash.com/photo-1499636136210-6f4ee915583e?w=800&auto=format&fit=crop&q=80',
      description:
          'Warm freshly baked cookies loaded with melted dark Belgian chocolate chunks and a sprinkle of Maldon sea salt.',
      ingredients: ['Dark Chocolate', 'Butter', 'Brown Sugar', 'Sea Salt'],
      reviewsCount: 78,
    ),
  ];

  static List<String> recentSearches = [
    'Burger',
    'Pizza',
    'Pasta',
    'Salad',
  ];
}
