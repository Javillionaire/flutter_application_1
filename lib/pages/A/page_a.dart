import 'package:flutter/material.dart';

class APage extends StatefulWidget {
  const APage({super.key});
  @override
  State<APage> createState() => _APageState();
}

class _APageState extends State<APage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(
            'A Page',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            Navigator.of(context).pushNamed('/b');
          }),
          child: const Text('B'),
        ));
  }
}
