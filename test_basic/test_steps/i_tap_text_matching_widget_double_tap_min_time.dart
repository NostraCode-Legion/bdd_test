import 'package:flutter/gestures.dart';
import 'package:flutter_test/flutter_test.dart';

// Then i tap {'onDoubleTap'} text matching {GestureDetector} widget double tap min time

Future<void> iTapTextMatchingWidgetDoubleTapMinTime(
  WidgetTester tester,
  String text,
  Type type,
) async {
  await tester.tap(
    find.ancestor(of: find.text(text), matching: find.byType(type)),
  );
  await tester.pump(kDoubleTapMinTime);
}
