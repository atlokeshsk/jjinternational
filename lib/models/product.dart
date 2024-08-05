import 'package:jjinternational/constants/app_constant.dart';

class Item {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  const Item({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

class Product {
  const Product({
    required this.items,
    required this.detailScreen,
    required this.imageUrl,
    required this.title,
    required this.content,
  });
  final String imageUrl;
  final String title;
  final String content;
  final String detailScreen;
  final List<Item> items;

  static const products = [
    Product(
      imageUrl: '${AppConstant.carosuelAssets}/coconut.jpg',
      title: 'Export tender Coconut',
      detailScreen: 'coconut',
      items: [
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
      ],
      content:
          'Tender Coconut wholesale from India to the global market with best quality which meets international standards.',
    ),
    Product(
      imageUrl: '${AppConstant.carosuelAssets}/apparel.jpeg',
      title: 'High Quality Export Apparel',
      detailScreen: 'apparel',
      items: [
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
      ],
      content:
          'Our apparel stands out for exceptional quality and fashionable designs. Crafted from premium materials with attention to detail, our diverse range ensures comfort, durability, and style. ',
    ),
    Product(
      imageUrl: '${AppConstant.carosuelAssets}/spice.jpg',
      title: 'Premium Spices Export',
      detailScreen: 'spices',
      items: [
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
      ],
      content:
          'Our range of spices is celebrated for its superior quality and rich flavors. Sourced from the finest origins, our spices cater to a variety of culinary needs. ',
    ),
    Product(
      imageUrl: '${AppConstant.carosuelAssets}/garlands.jpg',
      title: 'Exquisite Garlands Export',
      detailScreen: 'garlands',
      items: [
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
      ],
      content:
          'Our garlands are known for their vibrant colors and fresh, long-lasting flowers. Expertly crafted to suit various occasions. ',
    ),
    Product(
      imageUrl: '${AppConstant.carosuelAssets}/virgin_oil.jpg',
      title: 'Premium Virgin Oils Export',
      detailScreen: 'virgin-oil',
      items: [
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
      ],
      content:
          'Our range of virgin oils is renowned for its purity and exceptional quality. Extracted using the finest methods, our oils retain their natural nutrients and flavors.',
    ),
    Product(
      imageUrl: '${AppConstant.carosuelAssets}/dry_fruits.jpg',
      title: 'Premium Dry Fruits and Nuts Export',
      detailScreen: 'dry-fruits',
      items: [
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
        Item(
          name: 'coconut',
          description: 'deskjfk',
          price: 1000,
          imageUrl: '${AppConstant.productsAssets}/tender-coconut.jpg',
        ),
      ],
      content:
          'Our selection of dry fruits and nuts is known for its superior quality and rich taste. Sourced from the best regions, our products are carefully processed to preserve their natural goodness and nutritional value.',
    ),
  ];
}
