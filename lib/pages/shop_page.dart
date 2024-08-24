// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uzi_ecommerce_restaurant/components/shop_tile.dart';
import 'package:uzi_ecommerce_restaurant/models/cart.dart';
import 'package:uzi_ecommerce_restaurant/models/drawer_item.dart';
import 'package:uzi_ecommerce_restaurant/models/shop_item.dart';

class ShopPage extends StatelessWidget {
  ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    Cart cart = context.read<Cart>();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        title: Text(
          'The Salty Bread',
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Menu'),
              SizedBox(
                height: 300,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      ShopItem item = cart.items[index];
                      return ShopTile(
                        item: item,
                        onTap: () {
                          cart.addCartItem(item);
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Congrats!'),
                                  content: const Text(
                                    'You have succesfully added an item into the cart!',
                                  ),
                                );
                              });
                        },
                      );
                    }),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
              Icons.food_bank_rounded,
              size: 120,
            )),
            DrawerItem(
                icon: Icon(Icons.home),
                routeName: '/shop_page.dart',
                title: 'Home'),
            DrawerItem(
                icon: Icon(Icons.shopping_bag),
                routeName: '/cart_page.dart',
                title: 'Cart'),
            Spacer(),
            DrawerItem(
                icon: Icon(Icons.exit_to_app),
                routeName: '/intro_page.dart',
                title: 'Exit'),
          ],
        ),
      ),
    );
  }
}
