// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uzi_ecommerce_restaurant/models/shop_item.dart';

// ignore: must_be_immutable
class CartTile extends StatelessWidget {
  CartTile({super.key, required this.item, required this.onTap});

  ShopItem item;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Image.asset(
          item.imgPath,
        ),
        title: Row(
          children: [
            Text(
              item.name,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
            Text(' - ${item.price}')
          ],
        ),
        subtitle: Text(
          item.description,
          style: TextStyle(fontSize: 8),
        ),
        trailing: GestureDetector(
          onTap: onTap,
          child: Icon(Icons.delete),
        ),
      ),
    );
  }
}
