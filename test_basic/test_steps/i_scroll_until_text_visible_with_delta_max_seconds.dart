import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Then i scroll until {'0'} text visible with delta {200} max {100}  {1} seconds

Future<void> iScrollUntilTextVisibleWithDeltaMaxSeconds(
  WidgetTester tester,
  String text,
  double delta,
  int max,
  int seconds,
) async {
  await tester.scrollUntilVisible(
    find.text(text),
    delta,
    maxScrolls: max,
    duration: Duration(seconds: seconds),
    scrollable: find.byType(Scrollable),
  );
  await tester.pumpAndSettle();
}
