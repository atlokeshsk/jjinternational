import 'package:jjinternational/constants/constants.dart';

class CarosuelItemData {
  final String title;
  final String subTitle;
  final String content;
  final String imageURL;

  const CarosuelItemData({
    required this.title,
    required this.subTitle,
    required this.content,
    required this.imageURL,
  });
  static const carosuelData = [
    CarosuelItemData(
      title: 'Welcome to JJ International',
      subTitle: 'Imports & Exports',
      content: 'Trading Several Kinds of food\n Products, Apparael, etc..',
      imageURL: '${AppConstant.carosuelAssets}/main.jpg',
    ),
    CarosuelItemData(
      title: 'Coconuts',
      subTitle: 'Imports & Exports',
      content:
          'Various Kinds of Coconut - Tender Coconuts\n Husked Coconut \nCopra, Semi Husked',
      imageURL: '${AppConstant.carosuelAssets}/coconut.jpg',
    ),
    CarosuelItemData(
      title: 'Apparaels',
      subTitle: 'Imports & Exports',
      content:
          'A professional managed organization in knit\n garment maufacturing catering \n to provide quality and on time \nproduct',
      imageURL: '${AppConstant.carosuelAssets}/apparel.jpeg',
    ),
    CarosuelItemData(
      title: 'Spices',
      subTitle: 'Imports & Exports',
      content: 'Trading Several Kinds of food\n Products, Apparael, etc..',
      imageURL: '${AppConstant.carosuelAssets}/spice.jpg',
    ),
    CarosuelItemData(
      title: 'Garlands',
      subTitle: 'Imports & Exports',
      content: 'Trading Several Kinds of food\n Products, Apparael, etc..',
      imageURL: '${AppConstant.carosuelAssets}/garlands.jpg',
    ),
    CarosuelItemData(
      title: 'Virgin Oils',
      subTitle: 'Imports & Exports',
      content: 'Trading Several Kinds of food\n Products, Apparael, etc..',
      imageURL: '${AppConstant.carosuelAssets}/virgin_oil.jpg',
    ),
    CarosuelItemData(
      title: 'Dry Fruits and Nuts',
      subTitle: 'Imports & Exports',
      content: 'Trading Several Kinds of food\n Products, Apparael, etc..',
      imageURL: '${AppConstant.carosuelAssets}/dry_fruits.jpg',
    ),
  ];
}
