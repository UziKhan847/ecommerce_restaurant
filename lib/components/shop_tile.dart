// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:uzi_ecommerce_restaurant/models/shop_item.dart';

class ShopTile extends StatelessWidget {
  ShopItem item;
  void Function()? onTap;

  ShopTile(
      {super.key,
      required this.item,
      required this.onTap}); //, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        width: 200,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.white,
              child: Image.asset(item.imgPath),
            ),
            //SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                item.description,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10),
              ),
            ),

            SizedBox(
              height: 5,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.name),
                      Text(item.price),
                    ],
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Icon(Icons.add),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
