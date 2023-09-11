import 'package:flutter_test/flutter_test.dart';

// Then i tap {'onTapDown'} text matching {GestureDetector} widget

Future<void> iTapTextMatchingWidget(
  WidgetTester tester,
  String text,
  Type type,
) async {
  await tester.tap(find.ancestor(
    of: find.text(text),
    matching: find.byType(type),
  ));
  await tester.pumpAndSettle();
}
