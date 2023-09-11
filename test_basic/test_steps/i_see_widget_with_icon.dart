import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// example: Abd i see widget {SomeWidget} with {Icons.home} icon
Future<void> iSeeWidgetWithIcon(
  WidgetTester tester,
  Type type,
  IconData icon,
) async {
  expect(find.widgetWithIcon(type, icon), findsOneWidget);
}
