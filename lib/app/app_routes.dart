import 'package:flutter/cupertino.dart';
import 'package:qscondominio/app/features/home/presenter/pages/home_page.dart';
import 'package:qscondominio/app/features/login/presenter/pages/login_page.dart';
import 'package:qscondominio/app/features/login/presenter/pages/splash_page.dart';
import 'package:qscondominio/app/features/orders/presenter/pages/orders_page.dart';

class AppRoutes {
  //login dois
  static const String splash = '/';
  static const String login = '/login';

  //home
  static const String home = '/home';

  //orders
  static const String orders = '/orders';

  //Route map
  static final routes = {
    splash: (BuildContext context) => SplashPage(),
    login: (BuildContext context) => LoginPage(),
    home: (BuildContext context) => HomePage(),
    orders: (BuildContext context) => OrdersPage(),
  };
}
