import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:jjinternational/constants/constants.dart';

List<String> kDemoImages = [
  'https://i.pinimg.com/originals/7f/91/a1/7f91a18bcfbc35570c82063da8575be8.jpg',
  'https://www.absolutearts.com/portfolio3/a/afifaridasiddique/Still_Life-1545967888l.jpg',
  'https://cdn11.bigcommerce.com/s-x49po/images/stencil/1280x1280/products/53415/72138/1597120261997_IMG_20200811_095922__49127.1597493165.jpg?c=2',
  'https://i.pinimg.com/originals/47/7e/15/477e155db1f8f981c4abb6b2f0092836.jpg',
  'https://images.saatchiart.com/saatchi/770124/art/3760260/2830144-QFPTZRUH-7.jpg',
  'https://images.unsplash.com/photo-1471943311424-646960669fbc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c3RpbGwlMjBsaWZlfGVufDB8fDB8&ixlib=rb-1.2.1&w=1000&q=80',
  'https://cdn11.bigcommerce.com/s-x49po/images/stencil/1280x1280/products/40895/55777/1526876829723_P211_24X36__2018_Stilllife_15000_20090__91926.1563511650.jpg?c=2',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIUsxpakPiqVF4W_rOlq6eoLYboOFoxw45qw&usqp=CAU',
  'https://images.mojarto.com/photos/267893/large/DA-SL-01.jpg?1560834975',
];

class CarouselItem extends StatelessWidget {
  const CarouselItem({
    super.key,
    required this.realIndex,
    required this.itemIndex,
    required this.onNext,
    required this.onPrevious,
  });
  final int realIndex;
  final int itemIndex;
  final void Function() onNext;
  final void Function() onPrevious;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Colors.white,
          ),
          ClipPath(
            clipper: ColorClipper(),
            child: Container(
              color: AppConstant.pageBannerBackground,
            ),
          ),
          ClipPath(
            clipper: CarouselImageClipper(),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: kElevationToShadow[2],
                  image: DecorationImage(
                    image: NetworkImage(kDemoImages[itemIndex]),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: onPrevious,
                    icon: Icon(
                      Icons.arrow_left_outlined,
                      color: AppConstant.iconBorder,
                      size: 100,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welocome to JJ International',
                        style: textTheme.headlineLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppConstant.primaryColor),
                      ),
                      Text('Imports and Exports'),
                      Text('Trading several kinds \nof food product appraels')
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: onNext,
                icon: Icon(
                  Icons.arrow_right_outlined,
                  color: AppConstant.iconBorder,
                  size: 100,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CarouselImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.45, 0);
    path.lineTo(size.width * 0.40, size.height * 0.60);
    path.lineTo(size.width * 0.48, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class ColorClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height * 0.40);
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.35, size.height);
    path.lineTo(size.width * 0.30, size.height * 0.70);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
