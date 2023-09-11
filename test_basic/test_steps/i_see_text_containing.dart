import 'package:flutter_test/flutter_test.dart';

// Example: And i see {'text'} text containing
Future<void> iSeeTextContaining(
  WidgetTester tester,
  String text,
) async {
  expect(find.textContaining(RegExp(text)), findsOneWidget);
}
