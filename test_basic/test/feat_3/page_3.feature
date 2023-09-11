Feature: Page 3
  Scenario: Scroll the page
    Given the app is running page3
    Then i wait 
      And i see {'0'} text
      And i see {'end'} text
      And i see {Scrollable} widget
      And i ensure {'end'} text visible
    Then i scroll until {'end'} text visible with delta {200} max {100}  {1} seconds
    Then i tap {'end'} text matching {InkWell} widget
    Then i scroll until {'0'} text visible with delta {200} max {100}  {1} seconds
    Then i drag until {'end'} text visible with {ListView} widget offset {0}{50} max {1000}
    Then i tap {'end'} text matching {InkWell} widget
