// ignore_for_file: avoid_print

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_basic/pages/page_2.dart';

void main() {
  testWidgets(
    'Page2',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Page2(),
        ),
      );

      final onTapDown = find.text('onTapDown');
      final onTapUp = find.text('onTapUp');
      final onTap = find.text('onTap');
      final onDoubleTap = find.text('onDoubleTap');
      final onLongPress = find.text('onLongPress');
      final onDrag = find.text('onDrag');

      expect(onTapDown, findsOneWidget);
      expect(onTapUp, findsOneWidget);
      expect(onTap, findsOneWidget);
      expect(onDoubleTap, findsOneWidget);
      expect(onLongPress, findsOneWidget);
      expect(onDrag, findsOneWidget);

      //* tapDown
      await tester.tap(find.ancestor(of: onTapDown, matching: find.byType(GestureDetector)));
      await tester.pumpAndSettle();

      //* tapUp
      await tester.tap(find.ancestor(of: onTapUp, matching: find.byType(GestureDetector)));
      await tester.pumpAndSettle();

      //* tap
      await tester.tap(find.ancestor(of: onTap, matching: find.byType(GestureDetector)));
      await tester.pumpAndSettle();

      //* doubleTap
      await tester.tap(find.ancestor(of: onDoubleTap, matching: find.byType(GestureDetector)));
      await tester.pump(kDoubleTapMinTime); // <- Add this
      await tester.tap(find.ancestor(of: onDoubleTap, matching: find.byType(GestureDetector)));
      await tester.pumpAndSettle();

      //* longPress
      await tester.press(find.ancestor(of: onLongPress, matching: find.byType(GestureDetector)));
      await tester.pump(kLongPressTimeout); // <- Add this
      await tester.pumpAndSettle();

      //* dragHorizontal
      await tester.drag(onDrag, const Offset(100, 0));
      await tester.pumpAndSettle();

      //* dragVertical
      await tester.drag(onDrag, const Offset(0, 100));
      await tester.pumpAndSettle();
    },
  );
}
