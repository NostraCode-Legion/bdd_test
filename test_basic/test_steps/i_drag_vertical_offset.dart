import 'package:flutter_test/flutter_test.dart';

// Then i drag vertical {'onDrag'} {0} {100} offset

Future<void> iDragVerticalOffset(WidgetTester tester, String text, double dx, double dy) async {
  await tester.drag(find.text(text), Offset(dx, dy));
  await tester.pumpAndSettle();
}
