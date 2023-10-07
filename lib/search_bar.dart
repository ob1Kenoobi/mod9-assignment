import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  MyAppBar()
      : super(
          //title: Text('Shopping Cart'),
          backgroundColor: Color.fromARGB(255, 250, 249, 249),
          actions: [
            MySearchButton(),
          ],
          elevation: 0.0, // Set elevation to 0.0 to remove the shadow
        );
}

class MySearchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.search, color: Colors.black),
      onPressed: () {
        // Add your search functionality here
        print('Search button pressed');
      },
    );
  }
}
