// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page4'),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type in your text",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
