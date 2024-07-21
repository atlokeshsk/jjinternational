import 'package:jjinternational/constants/app_constant.dart';

class Product {
  const Product(
      {required this.imageUrl, required this.title, required this.content});
  final String imageUrl;
  final String title;
  final String content;

  static const products = [
    Product(
      imageUrl: AppConstant.tenderCoconut,
      title: 'Export tender Coconut',
      content:
          'Tender Coconut wholesale from India to the global market with best quality which meets international standards.',
    ),
    Product(
      imageUrl: AppConstant.huskedCoconut,
      title: 'Export Fresh Coconut',
      content:
          'Fresh Organic Semi / Pooja / Fully Husked Coconut are packaged with special attention to ensure that they remain intact when reaches our clients.',
    ),
    Product(
      imageUrl: AppConstant.dryCoconut,
      title: 'Export Dry Coconut',
      content:
          'Our range of (Dry Coconut) copra is known for their high nutritive values and quality. We are offering copra at reasonable rates and quality.',
    ),
  ];
}
