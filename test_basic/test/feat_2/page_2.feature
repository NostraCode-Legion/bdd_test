Feature: Page 2
  Scenario: find all elements in page 2
    Given the app is running page2
    Then i wait
      And i see {'onTapDown'} text
      And i see {'onTapUp'} text
      And i see {'onTap'} text
      And i see {'onDoubleTap'} text
      And i see {'onLongPress'} text
      And i see {'onDrag'} text
      
  Scenario: tap all buttons
    Given the app is running page2
    Then i wait
    Then i tap {'onTapDown'} text matching {GestureDetector} widget
    Then i tap {'onTapUp'} text matching {GestureDetector} widget
    Then i tap {'onTap'} text matching {GestureDetector} widget
    Then i tap {'onDoubleTap'} text matching {GestureDetector} widget double tap min time
    Then i tap {'onDoubleTap'} text matching {GestureDetector} widget
    Then i press {'onLongPress'} text matching {GestureDetector} widget long press timeout
    Then i drag horizontal {'onDrag'} {100} {0} offset
    Then i drag vertical {'onDrag'} {0} {100} offset