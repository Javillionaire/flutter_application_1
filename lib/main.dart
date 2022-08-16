import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/A/page_a.dart';
import 'package:flutter_application_1/pages/B/page_b.dart';
import 'package:flutter_application_1/pages/C/page_c.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      routes: {
        '/a': (context) => const APage(),
        '/b': (context) => const BPage(),
        '/c': (context) => const CPage(),
      },
      initialRoute: '/a',
    );
  }
}
