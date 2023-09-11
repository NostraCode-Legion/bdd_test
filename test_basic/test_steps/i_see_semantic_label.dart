import 'package:flutter_test/flutter_test.dart';

// And i see {'custom semantic'} semantic label
Future<void> iSeeSemanticLabel(
  WidgetTester tester,
  String semanticLabel,
) async {
  expect(find.bySemanticsLabel(RegExp(semanticLabel)), findsOneWidget);
}
