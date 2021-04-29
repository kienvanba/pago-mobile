import 'dart:async';

import 'package:flutter/material.dart';

typedef Widget SliderBuilder(BuildContext context, int index);

class InfiniteSlider extends StatefulWidget {
  final SliderBuilder builder;
  final int itemCount;

  const InfiniteSlider({Key key, this.builder, this.itemCount})
      : super(key: key);

  @override
  _SliderState createState() => _SliderState();
}

class _SliderState extends State<InfiniteSlider> {
  final _total = 500000;
  int _currentPage;
  PageController _pageController;
  Timer _timer;
  int _lastInteraction;

  @override
  void initState() {
    _lastInteraction = 0;
    _currentPage = (_total ~/ 2);
    _pageController =
        PageController(initialPage: _currentPage, viewportFraction: 0.8);
    _timer = Timer.periodic(Duration(milliseconds: 4500), (timer) {
      if (DateTime.now().millisecondsSinceEpoch - _lastInteraction > 4500) {
        _pageController.animateToPage(
          _currentPage + 1,
          duration: Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
        );
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: PageView.builder(
        controller: _pageController,
        itemBuilder: (context, index) {
          return widget.builder(
            context,
            index % widget.itemCount,
          );
        },
        itemCount: _total,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
    );
  }
}
