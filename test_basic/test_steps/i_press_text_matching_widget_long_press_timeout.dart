import 'package:flutter/gestures.dart';
import 'package:flutter_test/flutter_test.dart';

// Then i press {'onLongPress'} text matching {GestureDetector} widget long press timeout

Future<void> iPressTextMatchingWidgetLongPressTimeout(
  WidgetTester tester,
  String text,
  Type type,
) async {
  await tester.press(
    find.ancestor(
      of: find.text(text),
      matching: find.byType(type),
    ),
  );
  await tester.pump(kLongPressTimeout);
  await tester.pumpAndSettle();
}
