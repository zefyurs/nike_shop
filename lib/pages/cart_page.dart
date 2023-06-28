import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/cart.dart';
import '../model/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                Text('My Cart'),
                const SizedBox(
                  height: 25,
                ),
                Expanded(child: ListView.builder(
                  itemBuilder: (context, index) {
                    Shoe individualShoe = value.getUserCart()[index];

                    // return CartItem();
                  },
                ))
              ],
            ));
  }
}
