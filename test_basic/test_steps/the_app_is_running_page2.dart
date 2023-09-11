import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_basic/pages/page_2.dart';

Future<void> theAppIsRunningPage2(WidgetTester tester) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: Page2(),
    ),
  );
}
