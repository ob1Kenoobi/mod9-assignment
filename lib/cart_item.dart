// cart_item.dart
import 'package:flutter/material.dart';
import 'dummy_data.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartItem extends StatefulWidget {
  final Product product;
  final Function() onQuantityChanged; // Add this line

  CartItem({required this.product, required this.onQuantityChanged});

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void incrementItem() {
    setState(() {
      widget.product.quantity++;
      widget.onQuantityChanged();
    });
  }

  void decrementItem() {
    setState(() {
      if (widget.product.quantity > 1) {
        widget.product.quantity--;
        widget.onQuantityChanged();
      }
    });
  }

  double calculateTotal() {
    return widget.product.quantity * widget.product.unitPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: ListTile(
          leading: Image.network(
            widget.product.imageUrl,
            width: 100.0,
            height: 100.0,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.product.name),
              SizedBox(height: 4.0),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                  ),
                  children: [
                    TextSpan(
                      text: 'Color: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    TextSpan(text: '${widget.product.color}   '),
                    TextSpan(
                      text: 'Size: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    TextSpan(text: '${widget.product.size}'),
                  ],
                ),
              ),
            ],
          ),
          subtitle: Row(
            children: [
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: decrementItem,
              ),
              Text('${widget.product.quantity}'),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: incrementItem,
              ),
            ],
          ),
          trailing: Column(
            children: [
              GestureDetector(
                onTap: () {
                  // Add the logic for the SVG image here
                },
                child: SvgPicture.asset(
                  'assets/352549_more_vert_icon.svg', // Replace with your SVG file path
                  width: 24.0, // Set the width as needed
                  height: 24.0, // Set the height as needed
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                '${calculateTotal().toStringAsFixed(2)}\$',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
