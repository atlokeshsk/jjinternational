import 'package:flutter/material.dart';
import 'package:jjinternational/constants/constants.dart';

class Header extends SliverPersistentHeaderDelegate {
  Header({required this.minExtend, required this.maxExtend});
  final double minExtend;
  final double maxExtend;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.maxWidth);

        /// max height is greater than minExtend return the full header
        if (constraints.maxHeight > minExtent) {
          return Container(
            color: AppConstant.headerBackground,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                children: [
                  // Title section of the header.
                  TitleBar(
                    displayCompanyInfo:
                        constraints.maxHeight == maxExtent ? true : false,
                    issmallerScreen: constraints.maxWidth < 1009 ? true : false,
                  ),
                  NavBar(
                    minExtent: minExtent,
                  )
                ],
              ),
            ),
          );
        }
        return const NavBar(
          reachedTop: true,
        );
      },
    );
  }

  @override
  double get maxExtent => maxExtend;

  @override
  double get minExtent => minExtend;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

//TODO: need to find the appropriate name this widget later stage.
class TitleBar extends StatelessWidget {
  const TitleBar({
    super.key,
    required this.displayCompanyInfo,
    required this.issmallerScreen,
  });
  final bool displayCompanyInfo;
  final bool issmallerScreen;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: issmallerScreen
          ? Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CompanyInfo(
                      visible: true,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const ContactInfo(
                        title: 'Email',
                        content: 'atlokeshsk@icloud.com',
                        iconData: Icons.email,
                      ),
                      SizedBox(width: 10),
                      const ContactInfo(
                        title: 'Mobile',
                        content: '+91 6383226912',
                        iconData: Icons.phone,
                      ),
                      SizedBox(width: 10),
                      const SocialLinks()
                    ],
                  )
                ],
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CompanyInfo(
                  visible: displayCompanyInfo,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(width: 10),
                const ContactInfo(
                  title: 'Email',
                  content: 'atlokeshsk@icloud.com',
                  iconData: Icons.email,
                ),
                const SizedBox(width: 10),
                const ContactInfo(
                  title: 'Mobile',
                  content: '+91 6383226912',
                  iconData: Icons.phone,
                ),
                const SizedBox(width: 10),
                const SocialLinks()
              ],
            ),
    );
  }
}

class CompanyInfo extends StatelessWidget {
  const CompanyInfo({
    super.key,
    required this.visible,
    required this.crossAxisAlignment,
    required this.mainAxisAlignment,
  });
  final bool visible;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Visibility.maintain(
      visible: visible,
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Image.asset(
            AppConstant.logo,
            height: 120,
            width: 75,
            fit: BoxFit.fill,
          ),
          Text(
            'Cocunt Seller India',
            style: textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Quality Never Compromised',
            style: textTheme.bodyMedium,
          ),
          Text(
            'GSTIN:29BREPK4543A1Z1',
            style: textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({
    super.key,
    required this.title,
    required this.content,
    required this.iconData,
  });
  final String title;
  final String content;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border.all(color: AppConstant.iconBorder, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          child: Icon(
            iconData,
            color: Colors.green,
          ),
        ),
        const SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: textTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              content,
              style: textTheme.labelMedium,
            ),
          ],
        ),
      ],
    );
  }
}

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.youtube_searched_for),
        SizedBox(width: 10),
        Icon(Icons.video_call),
        SizedBox(width: 10),
        Icon(Icons.phone),
        SizedBox(width: 10),
      ],
    );
  }
}

class NavBar extends StatelessWidget {
  final double? minExtent;
  final bool reachedTop;
  const NavBar({
    super.key,
    this.minExtent,
    this.reachedTop = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: !reachedTop ? BorderRadius.circular(100) : null,
      ),
      height: minExtent,
      child: Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Text('Home'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Products'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Profile'),
          ),
          Expanded(child: SizedBox.expand()),
          // Contact us button
          SizedBox(
            height: double.infinity,
            width: 150,
            child: FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                shape: reachedTop ? RoundedRectangleBorder() : null,
              ),
              child: Text('Contact Us'),
            ),
          )
        ],
      ),
    );
  }
}
