import 'package:flutter/material.dart';
import 'package:jjinternational/components/components.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //TODO: ADD HEADER HERE.
          SliverPersistentHeader(
            pinned: true,
            delegate: Header(
              size: MediaQuery.sizeOf(context),
            ),
          ),
          //TODO: ADD BODY CONTENT HERE.
          SliverFillRemaining(
            child: Container(
              color: Colors.blue,
              height: 600,
            ),
          )
        ],
      ),
    );
  }
}
