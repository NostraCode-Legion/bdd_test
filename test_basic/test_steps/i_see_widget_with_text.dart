import 'package:flutter_test/flutter_test.dart';

// example: When i see widget {SomeWidget} with {'text'} text
Future<void> iSeeWidgetWithText(
  WidgetTester tester,
  Type type,
  String text,
) async {
  expect(find.widgetWithText(type, text), findsOneWidget);
}
