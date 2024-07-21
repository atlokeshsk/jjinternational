import 'package:flutter/material.dart';
import 'package:jjinternational/constants/constants.dart';
import 'package:jjinternational/models/models.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        color: AppConstant.pageBannerBackground,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Center(
            child: SizedBox(
              width: constraints.maxWidth < 902 ? 500 : 1000,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: constraints.maxWidth < 902 ? 2 : 3,
                  mainAxisExtent: 250,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return FooterCard(
                      certificate: Certificate.certificates[index]);
                },
                itemCount: Certificate.certificates.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class FooterCard extends StatelessWidget {
  const FooterCard({
    super.key,
    required this.certificate,
  });
  final Certificate certificate;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        //border text
        Container(
          decoration: const BoxDecoration(
              border: Border.symmetric(horizontal: BorderSide())),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              certificate.name,
              style: textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(height: 20),

        ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: Image.asset(certificate.imageUrl),
        ),
      ],
    );
  }
}
