// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './../../test_steps/the_app_is_running_page2.dart';
import 'package:nostra_bdd_steps/step/i_wait.dart';
import 'package:nostra_bdd_steps/step/i_see_text.dart';
import './../../test_steps/i_tap_text_matching_widget.dart';
import './../../test_steps/i_tap_text_matching_widget_double_tap_min_time.dart';
import './../../test_steps/i_press_text_matching_widget_long_press_timeout.dart';
import './../../test_steps/i_drag_horizontal_offset.dart';
import './../../test_steps/i_drag_vertical_offset.dart';

void main() {
  group('''Page 2''', () {
    testWidgets('''find all elements in page 2''', (tester) async {
      await theAppIsRunningPage2(tester);
      await iWait(tester);
      await iSeeText(tester, 'onTapDown');
      await iSeeText(tester, 'onTapUp');
      await iSeeText(tester, 'onTap');
      await iSeeText(tester, 'onDoubleTap');
      await iSeeText(tester, 'onLongPress');
      await iSeeText(tester, 'onDrag');
    });
    testWidgets('''tap all buttons''', (tester) async {
      await theAppIsRunningPage2(tester);
      await iWait(tester);
      await iTapTextMatchingWidget(tester, 'onTapDown', GestureDetector);
      await iTapTextMatchingWidget(tester, 'onTapUp', GestureDetector);
      await iTapTextMatchingWidget(tester, 'onTap', GestureDetector);
      await iTapTextMatchingWidgetDoubleTapMinTime(tester, 'onDoubleTap', GestureDetector);
      await iTapTextMatchingWidget(tester, 'onDoubleTap', GestureDetector);
      await iPressTextMatchingWidgetLongPressTimeout(tester, 'onLongPress', GestureDetector);
      await iDragHorizontalOffset(tester, 'onDrag', 100, 0);
      await iDragVerticalOffset(tester, 'onDrag', 0, 100);
    });
  });
}
