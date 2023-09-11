// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './../../test_steps/the_app_is_running.dart';
import 'package:nostra_bdd_steps/step/i_see_text.dart';
import 'package:nostra_bdd_steps/step/i_wait.dart';
import './../../test_steps/i_see_text_containing.dart';
import './../../test_steps/i_see_image.dart';
import './../../test_steps/i_see_key.dart';
import 'package:nostra_bdd_steps/step/i_see_icon.dart';
import './../../test_steps/i_see_tooltip.dart';
import './../../test_steps/i_see_semantic_label.dart';
import './../../test_steps/i_see_widget_with_text.dart';
import './../../test_steps/i_see_widget_with_icon.dart';
import './../../test_steps/i_see_widget_with_image.dart';
import 'package:nostra_bdd_steps/step/i_see_widget.dart';
import './../../test_steps/i_see_widget_match_descendant.dart';
import '../../test_steps/i_see_text_matching_widget.dart';

void main() {
  group('''Page 1''', () {
    testWidgets('''find elements in page 1''', (tester) async {
      await theAppIsRunning(tester);
      await iWait(tester);
      await iSeeText(tester, 'flutter');
      await iSeeTextContaining(tester, 'lorem');
      await iSeeImage(tester, 'assets/flutter_logo.jpg');
      await iSeeKey(tester, 'custom key');
      await iSeeIcon(tester, Icons.add);
      await iSeeTooltip(tester, 'custom tooltip');
      await iSeeSemanticLabel(tester, 'custom semantic');
      await iSeeWidgetWithText(tester, Container, 'dart');
      await iSeeWidgetWithIcon(tester, Container, Icons.home);
      await iSeeWidgetWithImage(tester, Container, 'assets/flutter_logo.jpg');
      await iSeeWidget(tester, Divider);
      await iSeeWidget(tester, VerticalDivider);
      await iSeeText(tester, 'custom widget');
      await iSeeWidget(tester, Chip);
      await iSeeWidgetMatchDescendant(tester, Column, 'descendant', 'value');
      await iSeeTextMatchingWidget(tester, 'faded', Opacity);
    });
  });
}
