import 'package:flutter_test/flutter_test.dart';

// And i see {Column} with {'descendant'} matching {'value'} descendant

Future<void> iSeeWidgetMatchDescendant(
  WidgetTester tester,
  Type type,
  String text,
  String matchText,
) async {
  expect(find.descendant(of: find.widgetWithText(type, text), matching: find.text(matchText)), findsOneWidget);
}
