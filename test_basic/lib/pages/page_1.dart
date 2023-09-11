import 'package:flutter/material.dart';

import '../widgets/container_x.dart';

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page1'),
      ),
      body: Center(
        child: Wrap(
          spacing: 5,
          runSpacing: 5,
          children: [
            //* find.Text
            const ContainerX(
              label: 'text',
              childx: Text('flutter'),
            ),
            //* find.textContaining
            const ContainerX(
              label: 'textContaining',
              childx: Text('lorem ipsum'),
            ),
            //* find.Image
            const ContainerX(
              label: 'image',
              childx: Image(
                image: AssetImage('assets/dart_logo.jpg'),
              ),
            ),
            //* find.byKey
            const ContainerX(
              label: 'byKey',
              childx: Text(
                'text with key',
                key: Key('custom key'),
              ),
            ),
            //* find.byIcon
            const ContainerX(
              label: 'byIcon',
              childx: Icon(Icons.add),
            ),
            //* find.byTooltip
            const ContainerX(
              label: 'byTooltip',
              childx: Tooltip(
                message: 'custom tooltip',
                child: Text('wraped by tooltip'),
              ),
            ),
            //* find.bySemanticsLabel
            ContainerX(
              label: 'bySemanticsLabel',
              childx: Semantics(
                label: 'custom semantic',
                child: const Text('wraped by simantic'),
              ),
            ),
            //* find.widgetWithText
            ContainerX(
              label: 'widgetWithText',
              childx: Container(
                padding: const EdgeInsets.all(3),
                color: Colors.amber,
                child: const Text('dart'),
              ),
            ),
            //* find.widgetWithIcon
            ContainerX(
              label: 'widgetWithIcon',
              childx: Container(
                padding: const EdgeInsets.all(3),
                color: Colors.amber,
                child: const Icon(Icons.home),
              ),
            ),
            //* find.widgetWithImage
            ContainerX(
              label: 'widgetWithImage',
              childx: Container(
                padding: const EdgeInsets.all(3),
                color: Colors.amber,
                child: const Image(
                  image: AssetImage('assets/flutter_logo.jpg'),
                ),
              ),
            ),
            //* find.byType
            const ContainerX(
              label: 'byType',
              childx: Divider(
                indent: 50,
                endIndent: 50,
              ),
            ),
            //* find.bySubtype
            const ContainerX(
              label: 'bySubtype',
              childx: VerticalDivider(
                indent: 5,
                endIndent: 5,
              ),
            ),
            //* find.byWidget
            ContainerX(
              label: 'byWidget',
              childx: customWidget,
            ),
            //* find.byWidgetPredicate
            const ContainerX(
              label: 'byWidgetPredicate',
              childx: Chip(
                label: Text('example'),
                backgroundColor: Colors.amber,
              ),
            ),
            //* find.descendant
            const ContainerX(
              label: 'descendant',
              childx: Text('value'),
            ),
            //* find.ancestor
            const ContainerX(
              label: 'ancestor',
              childx: Opacity(
                opacity: 0.5,
                child: Text('faded'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget customWidget = const Center(child: Text('custom widget'));
