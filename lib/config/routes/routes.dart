import 'package:demo_task_smit/features/view/route_view/route_list_page.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  /// Define all the routes as static constants
  static const String initial = '/';

  /// Map of routes to their corresponding widget builders
  static final routes = <String, WidgetBuilder>{
    initial: (BuildContext context) => const RouteListPage(),
  };
}
