import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/my_router.dart';

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
      onUnknownRoute: (settings) => MyRouter.onUnknownError(settings),
      onGenerateRoute: (settings) => MyRouter.onGenerateRoute(settings),
      initialRoute: MyRouter.initialRoute,
    );
  }
}
