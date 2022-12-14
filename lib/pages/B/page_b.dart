import 'package:flutter/material.dart';

import '../C/page_c.dart';

class BPage extends StatefulWidget {
  const BPage({super.key});
  @override
  State<BPage> createState() => _BPageState();
}

class _BPageState extends State<BPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(
            'B Page',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CPage()));
          }),
          child: const Text('B'),
        ));
  }
}
