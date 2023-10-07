// product_card.dart
import 'package:flutter/material.dart';
import 'package:mod9_assi/dummy_data.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.network(
          product.imageUrl,
          width: 50.0,
          height: 50.0,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(product.name),
            SizedBox(height: 4.0),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Color: ',
                    style: TextStyle(
                      color: Colors.grey, // Set the color for "Color:"
                      fontSize: 12.0,
                    ),
                  ),
                  TextSpan(
                    text: '${product.color}',
                    style: TextStyle(
                      color:
                          Colors.black, // Set the color for "${product.color}"
                      fontSize: 12.0,
                    ),
                  ),
                  TextSpan(
                    text: '   Size: ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                  TextSpan(
                    text: '${product.size}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
