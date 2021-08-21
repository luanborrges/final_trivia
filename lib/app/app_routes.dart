import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_project_mobile2/view/views.dart';

class AppRoutes {

  static const String APP_ROUTE_HOME = "/home";
  static const String APP_ROUTE_ABOUT_US = "/about_us";

  Route getRoutes(RouteSettings routeSettings) {

    switch(routeSettings.name) {

      case APP_ROUTE_HOME: {
        return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) => MyHomePage(title: "Home")
        );
      }

      case APP_ROUTE_ABOUT_US: {
        return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) => AboutUs(title: 'Sobre Nós',)
        );
      }

      default: {
        return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) => MyHomePage(title: "Home"),
            fullscreenDialog: true
        );
      }
    }
  }

}