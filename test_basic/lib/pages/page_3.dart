// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page3'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            100,
            (index) => Card(
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(index.toString()),
                ),
              ),
            ),
          )..add(
              Card(
                child: SizedBox(
                  height: 50,
                  child: InkWell(
                    onTap: () => print('last item tapped'),
                    child: const Center(
                      child: Text('end'),
                    ),
                  ),
                ),
              ),
            ),
        ),
      ),
    );
  }
}
