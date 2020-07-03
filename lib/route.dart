import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/screen/home_screen.dart';
import 'package:shopping_app/screen/splash_screen.dart';
import 'package:shopping_app/widget/detail_product.dart';

class RouteGenerator {
  RouteGenerator._();
  static Route buildRoutes(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        {
          return buildRoute(settings, SplashScreen());
        }
      case "/homepage":
        {
          return buildRoute(settings, CupertinoStoreHomePage());
        }
      case "/productdetail":
        {
          return buildRoute(
            settings,
            ProductDetail(
              product: settings.arguments,
            ),
          );
        }
      default:
        return buildRoute(settings, CupertinoStoreHomePage());
    }
  }

  static CupertinoPageRoute buildRoute(RouteSettings settings, Widget builder) {
    return CupertinoPageRoute(
      settings: settings,
      builder: (BuildContext context) => builder,
    );
  }
}
