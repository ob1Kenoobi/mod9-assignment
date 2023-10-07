// shopping_cart.dart
import 'package:flutter/material.dart';
import 'search_bar.dart';
import 'dummy_data.dart';
import 'cart_item.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  // Initially set the total amount based on the initial cart data
  double totalAmount = 0.0;

  @override
  void initState() {
    super.initState();
    updateTotalAmount(); // Calculate total amount initially
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'My Bag',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: DummyData.productsInCart.length,
              itemBuilder: (context, index) {
                return CartItem(
                  product: DummyData.productsInCart[index],
                  onQuantityChanged: updateTotalAmount,
                );
              },
            ),
          ),
          // Text and total amount above the "CHECK OUT" button
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total amount:',
                  style: TextStyle(fontSize: 18.0, color: Colors.grey),
                ),
                Text(
                  '${totalAmount.toString()}\$',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // "CHECK OUT" button
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                showCongratulatorySnackbar(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.symmetric(vertical: 15.0),
                ),
              ),
              child: Container(
                width: double.infinity,
                child: Center(
                  child: Text(
                    'CHECK OUT',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void updateTotalAmount() {
    setState(() {
      totalAmount = DummyData.productsInCart.fold(
        0,
        (previousValue, element) =>
            previousValue + (element.unitPrice * element.quantity),
      );
    });
  }

  // Function to show the congratulatory snackbar
  void showCongratulatorySnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Congratulations! Your order has been placed.'),
        duration: Duration(seconds: 3),
      ),
    );
  }
}
