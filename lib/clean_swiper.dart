library clean_swiper;

import 'package:flutter/widgets.dart';

class CleanSwiper extends StatefulWidget {
  @override
  _CleanSwiperState createState() => _CleanSwiperState();

  final List<Widget> children;
  final double viewportFraction;
  final int initialPage;

  CleanSwiper(
      {Key key,
      @required this.children,
      this.viewportFraction = 0.8,
      this.initialPage = 0})
      : super(key: key);
}

class _CleanSwiperState extends State<CleanSwiper> {
  PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(
        initialPage: widget.initialPage,
        viewportFraction: widget.viewportFraction);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      itemCount: widget.children.length,
      itemBuilder: (context, position) {
        return widget.children[position];
      },
    );
  }
}
