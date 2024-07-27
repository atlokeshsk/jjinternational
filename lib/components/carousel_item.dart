import 'package:flutter/material.dart';
import 'package:jjinternational/constants/constants.dart';
import 'package:jjinternational/models/models.dart';

class CarouselItem extends StatelessWidget {
  const CarouselItem({
    super.key,
    required this.realIndex,
    required this.itemIndex,
    required this.onNext,
    required this.onPrevious,
    required this.maxWidth,
    required this.carosuelItemData,
  });
  final int realIndex;
  final int itemIndex;
  final void Function() onNext;
  final void Function() onPrevious;
  final double maxWidth;
  final CarosuelItemData carosuelItemData;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(
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
          Positioned.fill(
            child: Row(
              children: [
                IconButton(
                  onPressed: onPrevious,
                  icon: const Icon(
                    Icons.arrow_left_outlined,
                    color: AppConstant.iconBorder,
                    size: 100,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: Text(
                          carosuelItemData.title,
                          style: textTheme.displayLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppConstant.primaryColor,
                          ),
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          carosuelItemData.subTitle,
                          style: textTheme.displayMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Text(
                          carosuelItemData.content,
                          style: textTheme.displaySmall!.copyWith(),
                        ),
                      ),
                    ],
                  ),
                ),
                ClipPath(
                  clipper: CarouselImageClipper(),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: maxWidth * 0.60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: kElevationToShadow[2],
                        image: DecorationImage(
                          image: AssetImage(carosuelItemData.imageURL),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: onNext,
                icon: const Icon(
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
    path.moveTo(size.width * 0.20, 0);
    path.lineTo(size.width * 0.00, size.height * 0.60);
    path.lineTo(size.width * 0.10, size.height);
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
