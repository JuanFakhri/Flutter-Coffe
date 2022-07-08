import 'package:kahvia/model/sandwichModel.dart';
import 'menusandwichcard.dart';
import 'package:flutter/material.dart';

class SandwichPage extends StatelessWidget {
  const SandwichPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, int key) {
          return MenusandwichCard(
            index: key,
          );
        });
  }
}
