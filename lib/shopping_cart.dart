// shopping_cart.dart
import 'package:flutter/material.dart';
import 'search_bar.dart';
import 'dummy_data.dart';
import 'product_card.dart';

class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      //backgroundColor: Colors.grey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'My Bag',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: DummyData.productsInCart.length,
              itemBuilder: (context, index) {
                return ProductCard(product: DummyData.productsInCart[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
