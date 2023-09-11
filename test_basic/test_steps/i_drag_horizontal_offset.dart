import 'package:flutter_test/flutter_test.dart';

// Then i drag {'onDrag'} {100, 0} offset

Future<void> iDragHorizontalOffset(WidgetTester tester, String text, double dx, double dy) async {
  await tester.drag(find.text(text), Offset(dx, dy));
  await tester.pumpAndSettle();
}
