// dummy_data.dart

class DummyData {
  static List<Product> productsInCart = [
    Product(
        'Pullover',
        'https://plus.unsplash.com/premium_photo-1673458070037-8cc98a465c0b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1355&q=80',
        'Red',
        'L'),
    Product(
        'T-Shirt',
        'https://shop.smu.edu.sg/cdn/shop/products/smu-terry-pullover.jpg?v=1626438274',
        'Blue',
        'M'),
    Product(
        'Spandex',
        'https://shop.smu.edu.sg/cdn/shop/products/smu-terry-pullover.jpg?v=1626438274',
        'Green',
        'XL'),
    Product(
        'Jersey',
        'https://shop.smu.edu.sg/cdn/shop/products/smu-terry-pullover.jpg?v=1626438274',
        'Black',
        'S'),
    // Add more products as needed
  ];
}

class Product {
  final String name;
  final String imageUrl;
  final String color;
  final String size;

  Product(this.name, this.imageUrl, this.color, this.size);
}
