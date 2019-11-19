import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:clean_swiper/clean_swiper.dart';

void main() {
  testWidgets('CleanSwiper instance check', (WidgetTester tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(
      MaterialApp(
        home: CleanSwiper(
          children: <Widget>[
            Container(),
            Container(),
          ],
        ))
      );
    expect(find.byType(CleanSwiper), findsOneWidget);
  });
}
