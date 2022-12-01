import 'package:ecomapp/screens/product_overview/produts_overview_screen.dart';
import 'package:flutter/material.dart';

import 'utils/constants.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.ProductOverviewPage:
        return MaterialPageRoute(builder: (_) => ProductOverviewScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(child: Text('Something went wrong')),
                ));
    }
  }
}
