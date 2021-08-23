import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_project_mobile2/view/views.dart';

class AppRoutes {

  static const String APP_ROUTE_HOME = "/home";
  static const String APP_ROUTE_ABOUT_US = "/about_us";
  static const String APP_ROUTE_CATEGORIES ='/categories_view';
  static const String APP_ROUTE_START ='/start';

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
      case APP_ROUTE_START: {
        return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) => StartQuiz(title: 'Quiz')
        );
      }
      case APP_ROUTE_CATEGORIES: {
        return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) => CategoriesView(title: 'Categorias')
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