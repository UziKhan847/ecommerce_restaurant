// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '/components/forward_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.food_bank_rounded,
                size: 220,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              Text(
                'Welcome to Salty Bread',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
              ),
              Text(
                'Where we serve only bread with meat',
                style: TextStyle(fontSize: 13),
              ),
              ForwardButton()
            ],
          ),
        ));
  }
}
