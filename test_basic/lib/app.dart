import 'package:flutter/material.dart';

import 'pages/page_1.dart';
// import 'pages/page_2.dart';
// import 'pages/page_3.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Test Basic',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      home: Page1(),
      // home: const Page2(),
      // home: Page3(),
    );
  }
}
