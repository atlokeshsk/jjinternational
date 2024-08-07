import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:jjinternational/models/models.dart';

import 'carousel_item.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late InfiniteScrollController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = InfiniteScrollController(initialItem: _selectedIndex);
  }

  void onNext() {
    _controller.nextItem();
  }

  void onPrevious() {
    _controller.previousItem();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.sizeOf(context).width * 0.35,
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return InfiniteCarousel.builder(
              itemCount: CarosuelItemData.carosuelData.length,
              controller: _controller,
              itemExtent: constraints.maxWidth,
              scrollBehavior: ScrollConfiguration.of(context).copyWith(
                dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                },
              ),
              onIndexChanged: (index) {
                if (_selectedIndex != index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                }
              },
              itemBuilder: (context, itemIndex, realIndex) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CarouselItem(
                    maxWidth: constraints.maxWidth,
                    realIndex: realIndex,
                    itemIndex: itemIndex,
                    onNext: onNext,
                    onPrevious: onPrevious,
                    carosuelItemData: CarosuelItemData.carosuelData[itemIndex],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
