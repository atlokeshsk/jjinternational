import 'package:flutter/material.dart';

class AppConstant {
  // App Colors
  static const headerBackground = Color(0xFFF4F9FF);
  static const iconBorder = Color(0xFFEAEBEE);
  static const filledButtonBackground = primaryColor;
  static const primaryColor = Color(0xFF1AA91B);
  static const pageBannerBackground = Color(0xFFE8FFE7);

  // App Assets
  static const assets = 'assets';
  static const logo = '$assets/logo.jpg';

  // Product images
  static const products = '$assets/products';
  static const tenderCoconut = '$products/tender-coconut.jpg';
  static const huskedCoconut = '$products/husked-coconut.jpg';
  static const dryCoconut = '$products/dry-coconut.jpg';

  // Certifcate images
  static const certificates = '$assets/certificates';
  static const appeda = '$certificates/appeda.png';
  static const cocunutDevelopmentBoard =
      '$certificates/coconut-development-board.png';
  static const fssai = '$certificates/fssai.png';

  // SliverPersistentHeader Extend Values
  static const maxExtend = 285.0;
  static const minimizedMaxExtedn = 359.0;
  static const minExtend = 55.0;
  static const minimizedMaxExtend = 290;
  static const widthBreakPoint = 1009.0;
}
