import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:reseller_2d3d/app_routes.dart';
import 'package:reseller_2d3d/module/auth/auth_modules.dart';
import 'package:reseller_2d3d/module/bet_info/bet_info_modules.dart';
import 'package:reseller_2d3d/module/bet_sale_record/sale_record_modules.dart';
import 'package:reseller_2d3d/module/main/main_modules.dart';
import 'package:reseller_2d3d/module/main/main_routes.dart';

class RouteUtils {
  static void _goNextPage(
      {String routeName,
      Object args,
      bool isReplace = false,
      bool isReplaceAll = false}) {
    if (args == null) {
      if (isReplace)
        Modular.to.navigate(routeName);
      else if (isReplaceAll)
        Modular.to.pushNamedAndRemoveUntil(
            routeName, (Route<dynamic> route) => false);
      else
        Modular.to.pushNamed(routeName);
    } else {
      if (isReplace)
        Modular.to.navigate(routeName, arguments: args);
      else if (isReplaceAll)
        Modular.to.pushNamedAndRemoveUntil(
            routeName, (Route<dynamic> route) => false);
      else
        Modular.to.pushNamed(routeName, arguments: args);
    }
  }

  static void changeRoute<M extends Module>(String route,
      {Object args, bool isReplace, bool isReplaceAll}) {
    String tempRoute = "";
    switch (M) {
      case AuthModule:
        tempRoute = AppRoutes.auth;
        break;
      case MainModule:
        tempRoute = AppRoutes.main;
        break;
      case BetInfoModule:
        tempRoute = AppRoutes.main + MainRoutes.betInfo;
        break;
      case SaleRecordModule:
        tempRoute = AppRoutes.main + MainRoutes.saleRecord;
    }
    _goNextPage(
        routeName: "$tempRoute$route",
        args: args,
        isReplace: isReplace ?? false,
        isReplaceAll: isReplaceAll ?? false);
  }
}
