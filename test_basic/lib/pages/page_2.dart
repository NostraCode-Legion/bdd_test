import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            GestureDetector(
              onTapDown: (details) => debugPrint('onTapDown'),
              child: const Text('onTapDown'),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTapUp: (details) => debugPrint('onTapUp'),
              child: const Text('onTapUp'),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => debugPrint('onTap'),
              child: const Text('onTap'),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onDoubleTap: () => debugPrint('onDoubleTap'),
              child: const Text('onDoubleTap'),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onLongPress: () => debugPrint('onLongPress'),
              child: const Text('onLongPress'),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onHorizontalDragEnd: (details) => debugPrint('onHorizontalDragEnd'),
              onVerticalDragEnd: (details) => debugPrint('onVerticalDragEnd'),
              child: const Text('onDrag'),
            ),
          ],
        ),
      ),
    );
  }
}
