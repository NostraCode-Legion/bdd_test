// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_basic/pages/page_3.dart';

void main() {
  testWidgets(
    'Page3',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Page3(),
        ),
      );

      final start = find.text('0');
      final end = find.text('end');
      final scrollablex = find.byType(Scrollable);
      final list = find.byType(ListView);

      expect(start, findsOneWidget);
      expect(end, findsOneWidget);
      expect(scrollablex, findsOneWidget);
      await tester.ensureVisible(end);

      //* scroll
      await tester.scrollUntilVisible(
        end,
        200,
        maxScrolls: 100,
        duration: const Duration(seconds: 1),
        scrollable: scrollablex,
      );
      await tester.pumpAndSettle();

      //* tap
      // await tester.ensureVisible(end);
      await tester.tap(find.ancestor(of: end, matching: find.byType(InkWell)));
      await tester.pumpAndSettle();

      //* scroll
      await tester.scrollUntilVisible(
        start,
        200,
        maxScrolls: 100,
        duration: const Duration(seconds: 1),
        scrollable: scrollablex,
      );
      await tester.pumpAndSettle();

      //* drag
      await tester.dragUntilVisible(
        end,
        list,
        const Offset(0, 50),
        maxIteration: 1000,
      );
      await tester.pumpAndSettle();

      //* tap
      // await tester.ensureVisible(end);
      await tester.tap(find.ancestor(of: end, matching: find.byType(InkWell)));
      await tester.pumpAndSettle();
    },
  );
}
