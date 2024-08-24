// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  String title;
  Icon icon;
  String routeName;

  DrawerItem(
      {super.key,
      required this.icon,
      required this.routeName,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.popAndPushNamed(context, routeName);
        },
        child: ListTile(
          leading: icon,
          title: Text(title),
        ),
      ),
    );
  }
}
