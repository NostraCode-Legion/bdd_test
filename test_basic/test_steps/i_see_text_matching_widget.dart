import 'package:flutter_test/flutter_test.dart';

// And i see {'faded'} text matching {Opacity} widget

Future<void> iSeeTextMatchingWidget(
  WidgetTester tester,
  String text,
  Type type,
) async {
  expect(find.ancestor(of: find.text(text), matching: find.byType(type)), findsOneWidget);
}
