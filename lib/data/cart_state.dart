import 'package:flutter/foundation.dart';
import '../models/food_item.dart';
import 'mock_data.dart';

class CartState extends ChangeNotifier {
  static final CartState _instance = CartState._internal();
  factory CartState() => _instance;

  CartState._internal() {
    // Seed initial cart matching the screenshot
    _items.add(
      CartItem(
        foodItem: MockData.foodItems[1], // Italian Pizza
        quantity: 1,
        size: 'small',
      ),
    );
  }

  final List<CartItem> _items = [];

  List<CartItem> get items => List.unmodifiable(_items);

  int get totalCount => _items.fold(0, (sum, item) => sum + item.quantity);

  double get subtotal =>
      _items.fold(0.0, (sum, item) => sum + item.totalPrice);

  double get tax => _items.isEmpty ? 0.0 : 5.0;
  double get discount => 0.0;
  double get total => _items.isEmpty ? 0.0 : subtotal + tax - discount;

  void addItem(FoodItem food, {int quantity = 1, String size = 'small'}) {
    final index = _items.indexWhere(
      (element) => element.foodItem.id == food.id && element.size == size,
    );
    if (index >= 0) {
      _items[index].quantity += quantity;
    } else {
      _items.add(CartItem(foodItem: food, quantity: quantity, size: size));
    }
    notifyListeners();
  }

  void incrementItem(CartItem item) {
    item.quantity++;
    notifyListeners();
  }

  void decrementItem(CartItem item) {
    if (item.quantity > 1) {
      item.quantity--;
    } else {
      _items.remove(item);
    }
    notifyListeners();
  }

  void removeItem(CartItem item) {
    _items.remove(item);
    notifyListeners();
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}
