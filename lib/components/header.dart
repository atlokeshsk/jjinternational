import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jjinternational/constants/constants.dart';

class Header extends SliverPersistentHeaderDelegate {
  Header({required this.minExtent, required this.maxExtent});
  @override
  final double minExtent;
  @override
  final double maxExtent;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Check if the height is greater than the minimum extent
        return constraints.maxHeight > minExtent
            ? Container(
                color: AppConstant.headerBackground,
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1300),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        children: [
                          TitleBar(
                            displayCompanyInfo:
                                constraints.maxHeight == maxExtent,
                            isSmallerScreen: constraints.maxWidth < 1009,
                          ),
                          NavBar(minExtent: minExtent),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : const NavBar(
                reachedTop: true,
              ); // Return a minimal NavBar if scrolled up
      },
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

// Widget for the title bar of the header
class TitleBar extends StatelessWidget {
  const TitleBar({
    super.key,
    required this.displayCompanyInfo,
    required this.isSmallerScreen,
  });
  final bool displayCompanyInfo;
  final bool isSmallerScreen;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: isSmallerScreen
          ? const Padding(
              padding: EdgeInsets.all(16.0),
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
                      ContactInfo(
                        title: 'Email',
                        content: 'atlokeshsk@icloud.com',
                        iconData: Icons.email,
                      ),
                      SizedBox(width: 10),
                      ContactInfo(
                        title: 'Mobile',
                        content: '+91 6383226912',
                        iconData: Icons.phone,
                      ),
                      SizedBox(width: 10),
                      SocialLinks(),
                    ],
                  ),
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
                const SocialLinks(),
              ],
            ),
    );
  }
}

// Widget for displaying company information
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

// Widget for displaying contact information
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
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
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

// Widget for displaying social media links
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

// Widget for the navigation bar
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
            onPressed: () {
              context.goNamed('home');
            },
            child: const Text('Home'),
          ),
          TextButton(
            onPressed: () {
              context.goNamed('products');
            },
            child: const Text('Products'),
          ),
          TextButton(
            onPressed: () {
              context.goNamed('profile');
            },
            child: const Text('Profile'),
          ),
          const Spacer(),
          SizedBox(
            height: double.infinity,
            width: 150,
            child: FilledButton(
              onPressed: () {
                context.goNamed('contact-us');
              },
              style: FilledButton.styleFrom(
                shape: reachedTop ? const RoundedRectangleBorder() : null,
              ),
              child: const Text('Contact Us'),
            ),
          ),
        ],
      ),
    );
  }
}
