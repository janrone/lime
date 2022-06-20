import 'package:flutter/material.dart';
import 'package:lime/config/routes_config.dart';

var onGenerateRoute = (RouteSettings settings) {
  // 获取路由名称
  String? routeName = settings.name;

  // 根据路由名称获取路由函数
  Function? pageFn = routes[routeName];

  // 命名路由
  if (pageFn != null) {
    if (settings.arguments != null) {
      return MaterialPageRoute(
        builder: (context) => pageFn(context, arguments: settings.arguments),
      );
    } else {
      return MaterialPageRoute(builder: (context) => pageFn());
    }
  }
};
