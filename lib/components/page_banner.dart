import 'package:flutter/material.dart';
import 'package:jjinternational/constants/constants.dart';

class PageBanner extends StatelessWidget {
  const PageBanner({super.key, required this.tagline, required this.title});
  final String tagline;
  final String title;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 200),
        child: Container(
          color: AppConstant.pageBannerBackground,
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    tagline,
                    style: textTheme.bodyMedium!.copyWith(
                      color: AppConstant.primaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        border: Border.symmetric(horizontal: BorderSide())),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        title,
                        style: textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
