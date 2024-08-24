// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ForwardButton extends StatelessWidget {
  const ForwardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pushNamed(context, '/shop_page.dart');
          print('hello');
        },
        splashColor: Theme.of(context).colorScheme.surface,
        iconSize: 50,
        color: Theme.of(context).colorScheme.inversePrimary,
        icon: Icon(Icons.arrow_forward));
  }
}
