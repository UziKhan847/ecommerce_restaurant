import 'package:flutter/material.dart';
import 'package:uzi_ecommerce_restaurant/models/shop_item.dart';

class Cart extends ChangeNotifier {
  List<ShopItem> items = [
    ShopItem(
        name: 'Pizza',
        description: "The world's finest Pizza, not found except here",
        price: "\$35",
        imgPath: 'lib/images/pizza.png'),
    ShopItem(
        name: 'Burger',
        description: "The world's finest Burger, not found except here",
        price: "\$35",
        imgPath: 'lib/images/burger.png'),
    ShopItem(
        name: 'Shawarma',
        description: "The world's finest Shawarma, not found except here",
        price: "\$35",
        imgPath: 'lib/images/shawarma.png'),
    ShopItem(
        name: 'HotDog',
        description: "The world's finest HotDog, not found except here",
        price: "\$35",
        imgPath: 'lib/images/hotdog.png')
  ];

  List<ShopItem> cartItems = [];

  void addCartItem(ShopItem item) {
    cartItems.add(item);
    notifyListeners();
  }

  void removeCartItem(int index) {
    cartItems.removeAt(index);
    notifyListeners();
  }
}
