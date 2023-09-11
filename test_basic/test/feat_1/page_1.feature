Feature: Page 1
  Scenario: find elements in page 1
    Given the app is running
    Then i wait
      And i see {'flutter'} text
      And i see {'lorem'} text containing
      And i see {'assets/flutter_logo.jpg'} image
      And i see {'custom key'} key
      And i see {Icons.add} Icon
      And i see {'custom tooltip'} tooltip
      And i see {'custom semantic'} semantic label
      And i see  {Container} widget with {'dart'} text
      And i see  {Container} widget with {Icons.home} icon
      And i see  {Container} widget with {'assets/flutter_logo.jpg'} image
      And i see {Divider} widget
      And i see {VerticalDivider} widget
      And i see {'custom widget'} text
      And i see {Chip} widget
      And i see {Column} {'descendant'} widget match {'value'} descendant
      And i see {'faded'} text matching {Opacity} widget
    
