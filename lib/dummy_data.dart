// dummy_data.dart

class DummyData {
  static List<Product> productsInCart = [
    Product(
        'Pullover',
        'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/454a5346-64ef-4467-8680-bd3ac29650c7/jordan-23-engineered-fleece-pullover-HJ7cbT.png',
        'Red',
        'L',
        25.0,
        1),
    Product(
        'T-Shirt',
        'https://contents.mediadecathlon.com/p2014174/495fbfd5eabbd253be4ab8323e098e5a/p2014174.jpg',
        'Blue',
        'M',
        30.0,
        1),
    Product(
        'Spandex',
        'https://upload.wikimedia.org/wikipedia/commons/b/b6/Cycling_kit_full_body_alt_3_%28cropped%29.jpg',
        'Green',
        'XL',
        20.0,
        1),
    Product(
        'Jersey',
        'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/645f3f29-56bf-415d-9697-c3492ee280a1/los-angeles-lakers-statement-edition-jordan-dri-fit-nba-swingman-jersey-lhdHs0.png',
        'Black',
        'S',
        45.0,
        1),
    // Add more products as needed
  ];
}

class Product {
  final String name;
  final String imageUrl;
  final String color;
  final String size;
  final double unitPrice;
  int quantity; // Add the unit price property

  Product(
    this.name,
    this.imageUrl,
    this.color,
    this.size,
    this.unitPrice,
    this.quantity,
  );
}
