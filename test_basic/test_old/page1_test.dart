// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_basic/pages/page_1.dart';

void main() {
  testWidgets(
    'Page1',
    (WidgetTester tester) async {
      // await tester.pumpWidget(const MyApp());
      await tester.pumpWidget(
        const MaterialApp(
          home: Page1(),
        ),
      );

      //* unexist widget
      final z = find.text('zzzzz'); //* exist widget
      final title = find.text('Page1');

      //* example of matcher
      expect(z, findsNothing);
      expect(title, findsOneWidget);
      expect(title, findsWidgets);
      expect(title, findsNWidgets(1));
      expect(title, findsAtLeastNWidgets(1));

      //* list of finder
      final a = find.text('flutter');
      final b = find.textContaining(RegExp('lorem'));
      final c = find.image(const AssetImage('assets/dart_logo.jpg'));
      // ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      final d = find.byKey(const Key('custom key'));
      final e = find.byIcon(Icons.add);
      final f = find.byTooltip('custom tooltip');
      final g = find.bySemanticsLabel(RegExp('custom semantic'));
      // ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      final h = find.widgetWithText(Container, 'dart');
      final i = find.widgetWithIcon(Container, Icons.home);
      final j = find.widgetWithImage(Container, const AssetImage('assets/flutter_logo.jpg'));
      // ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      final k = find.byType(Divider);
      final l = find.bySubtype<VerticalDivider>();
      // ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      final m = find.byWidget(customWidget);
      final n = find.byWidgetPredicate((widget) => widget is Chip && widget.backgroundColor == Colors.amber);

      // ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      final o = find.descendant(of: find.widgetWithText(Column, 'descendant'), matching: find.text('value'));
      final p = find.ancestor(of: find.text('faded'), matching: find.byType(Opacity));
      // ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      // final b = find.byElementPredicate((element) => false);
      // final c = find.byElementType(element);

      //* list of matchers
      expect(a, findsOneWidget);
      expect(b, findsOneWidget);
      expect(c, findsOneWidget);
      expect(d, findsOneWidget);
      expect(e, findsOneWidget);
      expect(f, findsOneWidget);
      expect(g, findsOneWidget);
      expect(h, findsOneWidget);
      expect(i, findsOneWidget);
      expect(j, findsOneWidget);
      expect(k, findsOneWidget);
      expect(l, findsOneWidget);
      expect(m, findsOneWidget);
      expect(n, findsOneWidget);
      expect(o, findsOneWidget);
      expect(p, findsOneWidget);

      //* list of tap
      await tester.tap(find.ancestor(of: a, matching: find.byType(OutlinedButton)));
      await tester.tap(find.ancestor(of: b, matching: find.byType(OutlinedButton)));
      await tester.tap(find.ancestor(of: c, matching: find.byType(OutlinedButton)));
      await tester.tap(find.ancestor(of: d, matching: find.byType(OutlinedButton)));
      await tester.tap(find.ancestor(of: e, matching: find.byType(OutlinedButton)));
      await tester.tap(find.ancestor(of: f, matching: find.byType(OutlinedButton)));
      await tester.tap(find.ancestor(of: g, matching: find.byType(OutlinedButton)));
      await tester.tap(find.ancestor(of: h, matching: find.byType(OutlinedButton)));
      await tester.tap(find.ancestor(of: i, matching: find.byType(OutlinedButton)));
      await tester.tap(find.ancestor(of: k, matching: find.byType(OutlinedButton)));
      await tester.tap(find.ancestor(of: l, matching: find.byType(OutlinedButton)));
      await tester.tap(find.ancestor(of: m, matching: find.byType(OutlinedButton)));
      await tester.tap(find.ancestor(of: n, matching: find.byType(OutlinedButton)));
      await tester.tap(find.ancestor(of: o, matching: find.byType(OutlinedButton)));
      await tester.tap(find.ancestor(of: p, matching: find.byType(OutlinedButton)));

      // expect(find.text('0'), findsOneWidget);
      // expect(find.text('1'), findsNothing);
      // await tester.tap(find.byIcon(Icons.add));
      // await tester.pump();
      // expect(find.text('0'), findsNothing);
      // expect(find.text('1'), findsOneWidget);
    },
  );
}
