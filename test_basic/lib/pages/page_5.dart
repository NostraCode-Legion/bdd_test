// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  const Page5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page5'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Icon(Icons.menu),
            );
          },
        ),
      ),
      drawer: Drawer(
        width: 300,
        child: Center(
          child: Builder(
            builder: (context) {
              return OutlinedButton(
                onPressed: () => Scaffold.of(context).closeDrawer(),
                child: const Text('close'),
              );
            },
          ),
        ),
      ),
    );
  }
}
