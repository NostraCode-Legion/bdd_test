import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Then i drag until {'end'} text visible with {ListView} widget offset {0}{50} max {1000}

Future<void> iDragUntilTextVisibleWithWidgetOffsetMax(
  WidgetTester tester,
  String text,
  Type type,
  double dx,
  double dy,
  int maxIteration,
) async {
  await tester.dragUntilVisible(
    find.text('end'),
    find.byType(ListView),
    Offset(dx, dy),
    maxIteration: maxIteration,
  );
  await tester.pumpAndSettle();
}
