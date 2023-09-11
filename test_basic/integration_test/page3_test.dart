import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
// import 'package:test_basic/main.dart' as app;
import 'package:test_basic/pages/page_3.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
    'end-to-end test',
    () {
      testWidgets(
        'Page3',
        (tester) async {
          // app.main();
          await tester.pumpWidget(
            const MaterialApp(
              home: Page3(),
            ),
          );
          await tester.pumpAndSettle();

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
            50,
            maxScrolls: 100,
            duration: const Duration(milliseconds: 100),
            scrollable: scrollablex,
          );
          await tester.pumpAndSettle(const Duration(seconds: 1));

          //* tap
          // await tester.ensureVisible(end);
          await tester.tap(find.ancestor(of: end, matching: find.byType(InkWell)));
          await tester.pumpAndSettle(const Duration(seconds: 1));

          //* scroll
          await tester.scrollUntilVisible(
            start,
            200,
            maxScrolls: 100,
            duration: const Duration(seconds: 1),
            scrollable: scrollablex,
          );
          await tester.pumpAndSettle(const Duration(seconds: 1));

          //* drag
          await tester.dragUntilVisible(
            end,
            list,
            const Offset(0, 50),
            maxIteration: 1000,
          );
          await tester.pumpAndSettle(const Duration(seconds: 1));

          //* tap
          // await tester.ensureVisible(end);
          await tester.tap(find.ancestor(of: end, matching: find.byType(InkWell)));
          await tester.pumpAndSettle(const Duration(seconds: 1));
        },
      );
    },
  );
}
