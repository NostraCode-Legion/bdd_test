import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// And i see widget {Container} with {'assets/flutter_logo.jpg'} image

Future<void> iSeeWidgetWithImage(
  WidgetTester tester,
  Type type,
  String path,
) async {
  expect(find.widgetWithImage(type, AssetImage(path)), findsOneWidget);
}
