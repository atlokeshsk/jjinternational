import 'package:flutter/material.dart';
import 'package:jjinternational/components/components.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      primary: false,
      slivers: [
        SliverToBoxAdapter(
          child: PageBanner(
            title: 'Welcome to JJ International Imports & Exports',
            tagline: 'We Will Get You Shortly',
          ),
        ),
      ],
    );
  }
}
