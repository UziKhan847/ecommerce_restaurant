// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uzi_ecommerce_restaurant/components/cart_tile.dart';
import 'package:uzi_ecommerce_restaurant/models/cart.dart';
import 'package:uzi_ecommerce_restaurant/models/shop_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    Cart cart = context.watch<Cart>();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        title: Text(
          'Cart',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8, left: 15, right: 15),
        child: ListView.builder(
            itemCount: cart.cartItems.length,
            itemBuilder: (context, index) {
              List<ShopItem> items = cart.cartItems;
              ShopItem item = items[index];

              return items.isEmpty
                  ? Center(
                      child: Text('No Items added yet!'),
                    )
                  : CartTile(
                      item: item,
                      onTap: () {
                        cart.removeCartItem(index);
                      },
                    );
            }),
      ),
    );
  }
}
