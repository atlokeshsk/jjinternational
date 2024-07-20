import 'package:flutter/material.dart';
import 'package:jjinternational/components/components.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      primary: false,
      slivers: [
        SliverToBoxAdapter(
          child: PageBanner(
            title: 'JJ International Portfolio',
            tagline: 'Our Company Profile',
          ),
        ),
      ],
    );
  }
}
