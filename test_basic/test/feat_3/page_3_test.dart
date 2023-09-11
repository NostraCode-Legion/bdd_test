// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './../../test_steps/the_app_is_running_page3.dart';
import 'package:nostra_bdd_steps/step/i_wait.dart';
import 'package:nostra_bdd_steps/step/i_see_text.dart';
import 'package:nostra_bdd_steps/step/i_see_widget.dart';
import './../../test_steps/i_ensure_text_visible.dart';
import './../../test_steps/i_scroll_until_text_visible_with_delta_max_seconds.dart';
import './../../test_steps/i_tap_text_matching_widget.dart';
import './../../test_steps/i_drag_until_text_visible_with_widget_offset_max.dart';

void main() {
  group('''Page 3''', () {
    testWidgets('''Scroll the page''', (tester) async {
      await theAppIsRunningPage3(tester);
      await iWait(tester);
      await iSeeText(tester, '0');
      await iSeeText(tester, 'end');
      await iSeeWidget(tester, Scrollable);
      await iEnsureTextVisible(tester, 'end');
      await iScrollUntilTextVisibleWithDeltaMaxSeconds(tester, 'end', 200, 100, 1);
      await iTapTextMatchingWidget(tester, 'end', InkWell);
      await iScrollUntilTextVisibleWithDeltaMaxSeconds(tester, '0', 200, 100, 1);
      await iDragUntilTextVisibleWithWidgetOffsetMax(tester, 'end', ListView, 0, 50, 1000);
      await iTapTextMatchingWidget(tester, 'end', InkWell);
    });
  });
}
