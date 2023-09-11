import 'package:flutter_test/flutter_test.dart';

// And i ensure {'end'} text visible

Future<void> iEnsureTextVisible(
  WidgetTester tester,
  String text,
) async {
  await tester.ensureVisible(find.text(text));
}
