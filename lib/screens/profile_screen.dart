import 'package:flutter/material.dart';
import 'package:jjinternational/components/components.dart';
import 'package:jjinternational/constants/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: Header(
              minExtent: AppConstant.minExtend,
              maxExtent: constraints.maxWidth < AppConstant.widthBreakPoint
                  ? AppConstant.minimizedMaxExtedn
                  : AppConstant.maxExtend,
            ),
          ),
          const SliverToBoxAdapter(
            child: PageBanner(
              title: 'JJ International Portfolio',
              tagline: 'Our Company Profile',
            ),
          ),
          SliverFillViewport(
            delegate: SliverChildListDelegate(
              [const _Poster()],
            ),
          ),
          const SliverToBoxAdapter(
            child: ProfileBanner(),
          ),
          SliverToBoxAdapter(
            child: ClipPath(
              clipper: QuotesClipper(),
              child: Container(
                height: 500,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/profile/quote.jpg',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'The Associtated Companies are also involed in the manufacturaing of All types of client requirements for above products',
                      textAlign: TextAlign.center,
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                    ),
                    Text(
                      '- JJ Internaional -',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.white,
                          ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Vision(),
          ),
          const SliverToBoxAdapter(
            child: Footer(),
          )
        ],
      );
    });
  }
}

class _Poster extends StatelessWidget {
  const _Poster();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: AppConstant.pageBannerBackground,
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://thumbs.dreamstime.com/b/global-business-logistics-import-export-background-container-cargo-freight-ship-transport-concept-137520514.jpg',
              ),
              fit: BoxFit.fill,
              opacity: 0.3,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'About JJ International',
                style: textTheme.headlineLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "Amarjon Import and Export's based in Combatore, Tamil Nadu India. Trading Several categories of Food Products, Apporels, etc. based on client's requirements. we have established ourselves as a leading trader and exporter of above products in the market. Being equipped with requisite experienced Team, we are able to satisfy the variegated demands of our clients in different industrial and food segments.",
                style: textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class ProfileBanner extends StatelessWidget {
  const ProfileBanner({
    super.key,
  });

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
                  'Why Choose Us',
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
                      'Our Aim is to build long term relationship with our clients',
                      style: textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Text(
                  'AmarJohn imports and exports, india established in 2019 is a globally recognized name in the market for quality,reliablity,service is the moto of our company with long term vision and quality is never compromised and utmost attention is paid to ensure timely delivers',
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class QuotesClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height * 0.30);
    path.lineTo(0, size.height * 0.90);
    path.lineTo(size.width, size.height * 0.70);
    path.lineTo(size.width, size.height * 0.10);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Vision extends StatelessWidget {
  const Vision({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Our Vison',
            textAlign: TextAlign.center,
            style: textTheme.headlineLarge,
          ),
          const SizedBox(height: 20),
          Text(
            'Our Relation With The Global Market On Trading Is Best Because We Make Sure For Products By Offering Next To Customer Happiness, Satisfaction With The Ability To Supply The Required Level Of Quality, We Are Proud To Serve.',
            textAlign: TextAlign.center,
            style: textTheme.titleLarge,
          ),
          const SizedBox(height: 20),
          const Text(
            'The professionalism and experience make us amongst the best preferred suppliers in the market. experienced manpower with world class experiences gives an edge over competition. Amarjon is headed by thorough knowledgeable persons who have vast experience in this field for more than three decades and are successfully catering to the various requirements of products trading for Industrial Products, Food Products, Apparels, Machineries, etc. and Other requirements if required by the customers.',
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 20),
          const Text(
            'Amarjon Import & Export\'s has presence in several countries and is catering to the demands of all global requirements with Best quality products, price and on time deliveries based on customer requirements, also we providing our best service for good relationship with customers on long terms vision and continuous business co-operation.',
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
