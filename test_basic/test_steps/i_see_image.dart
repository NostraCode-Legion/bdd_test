import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Example: And i see {'assets/flutter_logo.jpg'} image

Future<void> iSeeImage(
  WidgetTester tester,
  String path,
) async {
  expect(find.image(AssetImage(path)), findsOneWidget);
}
