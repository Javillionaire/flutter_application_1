import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/A/page_a.dart';
import 'package:flutter_application_1/pages/error/error_page.dart';

import '../pages/B/page_b.dart';
import '../pages/C/page_c.dart';

class MyRouter {
  static const String initialRoute = '/a';
  static onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/a':
        return MaterialPageRoute(builder: (context) => const APage());
      case '/b':
        return MaterialPageRoute(builder: (context) => const BPage());
      case '/c':
        return MaterialPageRoute(builder: (context) => const CPage());
      default:
        return MaterialPageRoute(builder: (context) => const ErrorPage());
    }
  }

  static onUnknownError(RouteSettings setting) {
    return MaterialPageRoute(builder: (context) => const ErrorPage());
  }
}
