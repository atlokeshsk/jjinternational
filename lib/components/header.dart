import 'package:flutter/material.dart';
import 'package:jjinternational/constants/constants.dart';

class Header extends SliverPersistentHeaderDelegate {
  Header({required this.size});
  final Size size;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(
      builder: (context, constraints) {
        /// max height is greater than minExtend return the full header
        if (constraints.maxHeight > minExtent) {
          return Container(
            color: AppColor.headerBackground,
            child: Column(
              children: [
                // Title section of the header.
                TitleBar(
                  displayCompanyInfo:
                      constraints.maxHeight == maxExtent ? true : false,
                ),
                NavBar(
                  minExtent: minExtent,
                )
              ],
            ),
          );
        }
        //TODO: should return nav bar.
        return Container(
          color: Colors.indigo,
        );
      },
    );
  }

  @override
  double get maxExtent => 285;

  @override
  double get minExtent => 55;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

//TODO: need to find the appropriate name this widget later stage.
class TitleBar extends StatelessWidget {
  const TitleBar({super.key, required this.displayCompanyInfo});
  final bool displayCompanyInfo;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CompanyInfo(
            visible: displayCompanyInfo,
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
  const CompanyInfo({super.key, required this.visible});
  final bool visible;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Visibility.maintain(
      visible: visible,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppImage.logo,
            height: 150,
            width: 75,
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
              border: Border.all(color: AppColor.iconBorder, width: 2),
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

  const NavBar({super.key, this.minExtent});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      height: minExtent,
    );
  }
}
